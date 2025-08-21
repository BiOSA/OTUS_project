from functools import cached_property
from typing import Any, Iterable, Mapping
import pendulum
from airflow.models.baseoperator import BaseOperator

from airflow.exceptions import (
    AirflowSkipException,
    AirflowException,
)
from airflow.providers.common.sql.operators.sql import BaseSQLOperator
from airflow.providers.postgres.hooks.postgres import PostgresHook
from airflow.utils.context import Context
from jinja2 import Environment, Template
from psycopg2.errors import ConnectionException
from dags.utils.gp_utils import (
    Layer,
    PartitionType,
    TestRule,
    get_field_list_type,
    get_field,
    get_inserted_field,
    quote,
)
from dags.utils.partitions import partiting
from dags.utils.formatting import camel_to_snake


class GPOperator(BaseSQLOperator):
    def __init__(
        self,
        conn_id: str,
        entity_name: str,
        source: str,
        branch: str,
        layer: Layer | str,
        parameters: Mapping | Iterable | None = None,
        param_test: Mapping | Iterable | None = None,
        **kwargs,
    ) -> None:
        self.schema = None
        self.postgres_conn_id = conn_id
        self.pxf = kwargs.pop("pxf", False)
        self.entity_name = entity_name
        self.gp_entity_name = camel_to_snake(entity_name)
        self.source = source + "_"
        self.branch = branch + "_"
        self.partition_by = kwargs.pop("partition_by", None)
        self.format_data = "pxf"
        self.partition_type = self._parse_param(
            kwargs.pop("partition_type", PartitionType.everyDay), PartitionType
        )
        self.parameters = parameters
        self.param_test = param_test
        self.custom_execution_date = "etl_execution_date"
        self.pxf_server = kwargs.pop("pxf_server", None)
        self.source_schema = kwargs.pop("source_schema", None)
        self.test_rule = TestRule.DO_FAIL

        if "schema" in kwargs:
            self.schema = kwargs.pop("schema")
            self.fields = get_field(self.schema)
            self.insert_fields = get_inserted_field(self.schema, self.format_data)

        self.layer = self._parse_param(layer, Layer)
        self._source_layer = self._parse_param(
            kwargs.pop("source_layer", Layer.STG), Layer
        )
        self.partition_field = camel_to_snake(
            kwargs.pop("partition_field", "execution_date")
        )

        self.sql = kwargs.pop("sql", None)
        self.test = kwargs.pop("test", None)
        self.unique_keys = kwargs.pop("unique_keys", None)
        self.orientation = kwargs.pop("orientation", "row")
        super().__init__(**kwargs)

    @staticmethod
    def _parse_param(param, cls):
        if isinstance(param, str):
            return cls(param.lower())
        elif isinstance(param, cls):
            return param
        raise NotImplementedError(f"Unsupported parameter type: {type(param)}")

    @property
    def source_layer(self):
        return Layer.STG if self.layer == Layer.ODS else self._source_layer

    @cached_property
    def hook(self):
        return PostgresHook(postgres_conn_id=self.postgres_conn_id)

    def render_template_fields(
        self, context: Context, jinja_env: Environment | None = None
    ) -> None:
        ds_nodash = context["logical_date"].format("YYYYMMDDHHmmss")
        context["table"] = (
            f'tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}"'
        )
        return super().render_template_fields(context, jinja_env)

    def _build_pxf_location_url(self):
        return f"""pxf://{self.source_schema}.{self.entity_name}?PROFILE=jdbc&SERVER={self.pxf_server.value}"""

    def _build_pxf_format_clause(self):
        return "FORMAT 'CUSTOM' (FORMATTER='pxfwritable_import')"

    def _build_test_query(self, ds_nodash, custom_sql=""):
        if custom_sql:
            return custom_sql
        if self.test:
            return self.test
        true_cnt = self.ti.xcom_pull(task_ids="src_inc_count", key="return_value")[0]
        return f"""SELECT (SELECT count(*) FROM tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}") = {true_cnt}"""

    def _run_data_test(self, ds_nodash, custom_sql=""):
        result = self.hook.get_first(self._build_test_query(ds_nodash, custom_sql))
        if not result:
            table = f'tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}"'
            self.log.info(f"Test failed for temp table: {table}")
            if self.test_rule == TestRule.DO_FAIL:
                raise AirflowException(f"No data in temp table: {table}")
            raise AirflowSkipException()

    def _build_table_signature(self, is_external):
        return f"({get_field_list_type(self.schema, is_external)})"

    def _build_external_table_sql(self):
        return f"""
        DROP EXTERNAL TABLE IF EXISTS {self.layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}";
        CREATE EXTERNAL TABLE {self.layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}" {self._build_table_signature(True)}
        LOCATION('{self._build_pxf_location_url()}')
        {self._build_pxf_format_clause()};
        """

    def _build_stg_table_sql(self):
        return f"""
        DROP TABLE IF EXISTS stg."t_{self.branch}{self.source}{self.gp_entity_name}_{self.context["ds_nodash"]}";
        CREATE TABLE stg."t_{self.branch}{self.source}{self.gp_entity_name}_{self.context["ds_nodash"]}" {self._build_table_signature(False)};
        INSERT INTO stg."t_{self.branch}{self.source}{self.gp_entity_name}_{self.context["ds_nodash"]}" ({self.fields})
        {self.sql}
        """

    def _load_to_ext(self):
        try:
            self.hook.run(sql=self._build_external_table_sql())
            self._run_data_test(
                ds_nodash=self.context["ds_nodash"],
                custom_sql=f'SELECT 1 FROM {self.layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}" LIMIT 1;',
            )
        except ConnectionException:
            raise AirflowException("Error in loading external table")

    def _load_to_stg(self):
        try:
            rendered_sql = Template(self._build_stg_table_sql()).render(
                **{
                    **self.context,
                    "start_date": self.context["logical_date"].isoformat(),
                    "data_interval_start": self.context[
                        "data_interval_start"
                    ].isoformat(),
                    "data_interval_end": self.context["data_interval_end"].isoformat(),
                }
            )
            self.hook.run(sql=rendered_sql)
            self._run_data_test(
                ds_nodash=self.context["ds_nodash"],
                custom_sql=f'SELECT 1 FROM stg."t_{self.branch}{self.source}{self.gp_entity_name}_{self.context["ds_nodash"]}" LIMIT 1;',
            )
        except ConnectionException:
            raise AirflowException("Error in loading stg table")

    def _build_partition_clause(self):
        if self.partition_type == PartitionType.noPartition:
            return "WHERE 1 = 1"
        return f"WHERE 1 = 1 AND date_trunc('{self.partition_type.value}', {self.partition_field})::{self.partition_type.data_type} = {quote(self.partition_by)}::{self.partition_type.data_type}"

    def _build_select_data_sql(self):
        if self.sql:
            return f"{self.sql} {self._build_partition_clause()}"
        return f"""
            SELECT DISTINCT {self.insert_fields}
            FROM {self.source_layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}_{self.context["ds_nodash"]}"
            {self._build_partition_clause()};
        """

    def _build_prepare_tmp_table_sql(self, ds_nodash):
        orientation_clause = (
            "appendoptimized=true"
            if self.orientation == "row"
            else "appendonly='true', orientation='column', compresstype=zstd, compresslevel='1'"
        )
        return f"""
            DROP TABLE IF EXISTS tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}";
            CREATE TABLE tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}"
            (LIKE {self.layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}")
            WITH ({orientation_clause});
            INSERT INTO tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}" ({self.fields})
            {self._build_select_data_sql()}
        """

    def _build_drop_tmp_table_sql(self, ds_nodash):
        return f'DROP TABLE IF EXISTS tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}";'

    def _build_exchange_partition_sql(self, partition, ds_nodash):
        return f"""
            ALTER TABLE {self.layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}"
            EXCHANGE PARTITION FOR ({self.partition_type.data_type} {quote(partition[0])})
            WITH TABLE tmp."{self.layer.value}_t_{self.branch}{self.source}{self.gp_entity_name}_{ds_nodash}";
        """

    def _partition_load(self):
        partitions = self._get_partition_values()
        self.log.info(f"Partition values: {partitions}")
        for partition in partitions:
            self.partition_by = partition[0]
            ds_nodash = pendulum.parse(str(self.partition_by)).format("YYYYMMDDHHmmss")
            partiting(
                hook=self.hook,
                entity_name=self.gp_entity_name,
                source=f"{self.branch}{self.source}",
                partition_by=self.partition_by,
                partition_type=self.partition_type,
                layer=self.layer,
            )
            try:
                self.hook.run(
                    sql=self._build_prepare_tmp_table_sql(ds_nodash), autocommit=True
                )
                self._run_data_test(ds_nodash)
                self.hook.run(
                    sql=self._build_exchange_partition_sql(partition, ds_nodash),
                    autocommit=True,
                )
            except ConnectionException as exp:
                if "matches 0 files" in exp.pgerror:
                    self.log.info(
                        "No data found in tmp table during exchange partitions"
                    )
                    raise AirflowSkipException
            finally:
                self.hook.run(
                    sql=self._build_drop_tmp_table_sql(ds_nodash), autocommit=True
                )

    def _get_partition_values(self):
        sql = f"""
            SELECT date_trunc('{self.partition_type.value}', {self.partition_field}::timestamp)::{self.partition_type.data_type}
            FROM {self.source_layer.value}."t_{self.branch}{self.source}{self.gp_entity_name}_{self.context["ds_nodash"]}"
            WHERE {self.custom_execution_date} = {quote(self.context["logical_date"].format("YYYY-MM-DD HH:mm:ss"))}
            GROUP BY 1
            ORDER BY 1;
        """
        return self.hook.get_records(sql)

    def pre_execute(self, context: Any):
        context["ds_nodash"] = context["logical_date"].format("YYYYMMDDHHmmss")
        return super().pre_execute(context)

    def execute(self, context):
        self.context = context
        self.ti = context["ti"]
        if self.layer == Layer.EXT:
            self._load_to_ext()
            self._load_to_stg()
        elif (
            self.layer == Layer.ODS and self.partition_type != PartitionType.noPartition
        ):
            self._partition_load()


class GPClearStaging(BaseOperator):
    def __init__(
        self,
        conn_id: str,
        entity_name: str,
        source: str,
        branch: str,
        **kwargs,
    ) -> None:
        self.postgres_conn_id = conn_id
        self.source = source
        self.branch = branch
        self.layer = Layer.STG
        self.gp_entity_name = camel_to_snake(entity_name)

        super().__init__(**kwargs)

    def __get_sql(self, context):
        return f"""
        DROP TABLE IF EXISTS stg."t_{self.branch}_{self.source}_{self.gp_entity_name}_{context["ds_nodash"]}";
        """

    @cached_property
    def hook(self):
        return PostgresHook(postgres_conn_id=self.postgres_conn_id)

    def pre_execute(self, context: Any):
        context["ds_nodash"] = context["logical_date"].format("YYYYMMDDHHmmss")
        return super().pre_execute(context)

    def execute(self, context):
        sql = self.__get_sql(context)
        self.log.info(f"SQL {sql}")
        self.hook.run(sql=self.__get_sql(context), autocommit=True)
