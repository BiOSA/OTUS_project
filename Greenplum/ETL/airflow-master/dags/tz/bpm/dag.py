from airflow import DAG
from datetime import datetime, timedelta
from dags.tz.bpm.config import (
    entities,
    branch,
    source,
    gp_conn_id,
    source_schema,
    src_conn_id,
    source_schema,
)
from dags.utils.greenplum import GPOperator, GPClearStaging
from dags.utils.gp_utils import PartitionType, Layer, PxfServer
from airflow.operators.python import PythonOperator
from dags.utils.data_quality import check_src_inc
from dags.utils.formatting import camel_to_snake

default_args = {
    "depends_on_past": False,
    "retries": 10,
    "retry_delay": timedelta(minutes=3),
}
from pathlib import Path

root = Path(__file__).resolve().parent

for entity in entities:
    entity_name_gp = camel_to_snake(entity["name"])
    with DAG(
        dag_id=f"{branch}_{source}.{entity_name_gp}",
        default_args=default_args,
        description=f"Load table {entity['name']} from {source}",
        schedule="@daily",
        start_date=entity.get("start_date", datetime(2024, 1, 1)),
        catchup=True,
        max_active_runs=1,
    ) as dag:
        if entity["partition_type"] == PartitionType.everyDay:
            if "sql_path" in entity:
                with open(root / f"{entity['sql_path']}") as file:
                    sql = file.read()
                check_src_inc_count = PythonOperator(
                    task_id="src_inc_count",
                    python_callable=check_src_inc,
                    op_kwargs={
                        "src_conn_id": src_conn_id,
                        "source_schema": source_schema,
                        "entity_name": entity["name"],
                        "inc_col": entity["partition_field"],
                    },
                )
                mssql_to_ext = GPOperator(
                    task_id="mssql_to_ext",
                    conn_id=gp_conn_id,
                    entity_name=entity["name"],
                    source=source,
                    branch=branch,
                    layer=Layer.EXT,
                    pxf=True,
                    pxf_server=PxfServer.tz_bpm,
                    schema=entity["schema"],
                    source_schema=source_schema,
                    sql=sql,
                )

                gp_to_ods = GPOperator(
                    task_id="gp_to_ods",
                    conn_id=gp_conn_id,
                    entity_name=entity["name"],
                    source=source,
                    branch=branch,
                    layer=Layer.ODS,
                    schema=entity["schema"],
                    source_schema=source_schema,
                    partition_type=PartitionType.everyDay,
                    partition_field=entity["partition_field"],
                    orientation="column",
                )
                clear_stg = GPClearStaging(
                    task_id="clear_stg",
                    conn_id=gp_conn_id,
                    entity_name=entity["name"],
                    source=source,
                    branch=branch
                )  
                check_src_inc_count >> mssql_to_ext >> gp_to_ods >> clear_stg
