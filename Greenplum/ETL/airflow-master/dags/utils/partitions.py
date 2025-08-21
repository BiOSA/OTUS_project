from airflow.providers.postgres.hooks.postgres import PostgresHook
from dags.utils.gp_utils import PartitionType, Layer
from dateutil.relativedelta import relativedelta
import pendulum
import logging

logger = logging.getLogger(__name__)


def quote(value):
    if isinstance(value, int):
        return value
    return f"'{value}'"


def add_partition(
    hook: PostgresHook,
    table_name: str,
    partition_by: str,
    layer: Layer,
    partition_type: PartitionType = PartitionType.everyDay,
):
    partition_by = str(partition_by)
    if partition_type == PartitionType.everyDay:
        start_partition = pendulum.parse(partition_by).replace(
            hour=0, minute=0, second=0
        )
        end_partition = start_partition + relativedelta(days=1)
        start_partition = start_partition.to_date_string()
        end_partition = end_partition.to_date_string()

    elif partition_type == PartitionType.everyHour:
        start_partition = pendulum.parse(partition_by).replace(minute=0, second=0)
        end_partition = start_partition + relativedelta(hours=1)
        start_partition = start_partition.to_datetime_string()
        end_partition = end_partition.to_datetime_string()

    elif partition_type == PartitionType.everyMonth:
        start_partition = pendulum.parse(partition_by).replace(
            day=1, hour=0, minute=0, second=0
        )
        end_partition = start_partition + relativedelta(months=1)
        start_partition = start_partition.to_date_string()
        end_partition = end_partition.to_date_string()

    elif partition_type == PartitionType.snapshot:
        start_partition = int(partition_by)
        end_partition = start_partition + 1

    sql_tmp = f"""
    ALTER TABLE {layer.value}."t_{table_name}" ADD PARTITION 
            START ({partition_type.data_type} {quote(start_partition)}) INCLUSIVE 
            END ({partition_type.data_type} {quote(end_partition)}) EXCLUSIVE;"""
    hook.run(sql=sql_tmp, autocommit=True)


def check_partition(
    hook: PostgresHook,
    table_name: str,
    partition_by: str,
    partition_type: PartitionType,
    layer: str,
):
    logging.info(f"Start checking partition in table {table_name}")

    if partition_type == PartitionType.everyMonth:
        partition_by = (
            pendulum.parse(partition_by)
            .replace(day=1, hour=0, minute=0, second=0)
            .format("YYYY-MM-DD")
        )

    sql_tmp = f"""
        SELECT 1
        FROM pg_partitions 
        WHERE tablename='t_{table_name}'
        and schemaname = '{layer.value}'
        and partitionrangestart ~ '{partition_by}';"""
    logger.info(f"Check partition query:{sql_tmp}")

    raw = hook.get_first(sql=sql_tmp)
    logger.info(f"Checking:{raw}")

    if raw:
        return True
    return False


def partiting(
    hook: PostgresHook,
    entity_name,
    source,
    partition_by,
    partition_type: PartitionType,
    layer: Layer,
):
    if not check_partition(
        hook=hook,
        table_name=f"{source}{entity_name}",
        partition_by=partition_by,
        partition_type=partition_type,
        layer=layer,
    ):
        logging.info(
            f"Partition {partition_by} in table {source}_{entity_name} not exist"
        )
        add_partition(
            hook=hook,
            table_name=f"{source}{entity_name}",
            partition_by=partition_by,
            partition_type=partition_type,
            layer=layer,
        )
    else:
        logging.info(f"Partition {partition_type} in table {source}_{entity_name} exist")
