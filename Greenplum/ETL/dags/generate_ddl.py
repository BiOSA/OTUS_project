from datetime import datetime, timedelta
from pathlib import Path

from dags.tz.bpm.config import entities
from dags.utils.gp_utils import PartitionType
from dags.utils.formatting import camel_to_snake

class DDLGenerator:
    def __init__(
        self,
        entity_name,
        source,
        distributed_by=None,
        date_from=None,
        date_to=None,
        partition_by=None,
        schema=None,
        partition_type=PartitionType.noPartition,
        schema_table="stg",
    ) -> None:
        self.entity_name = entity_name
        self.source = source
        self.distributed_by = distributed_by
        self.partition_start = date_from
        self.partition_end = date_to
        self.partition_by = partition_by
        self.schema_fields = schema
        self.partition_type = partition_type
        self.schema_table = schema_table

    def _default_partition_end(self):
        now = datetime.now()
        if self.partition_type == PartitionType.everyDay:
            return (now.date() + timedelta(days=1)).strftime("%Y-%m-%d")
        elif self.partition_type == PartitionType.everyHour:
            next_hour = now + timedelta(hours=1)
            return next_hour.replace(minute=0, second=0, microsecond=0).isoformat()
        elif self.partition_type == PartitionType.everyMonth:
            future = now + timedelta(days=30)
            return future.replace(
                day=1, hour=0, minute=0, second=0, microsecond=0
            ).isoformat()

    def _default_partition_start(self):
        now = datetime.now()
        if self.partition_type == PartitionType.everyDay:
            return now.date().strftime("%Y-%m-%d")
        elif self.partition_type == PartitionType.everyHour:
            return now.replace(minute=0, second=0, microsecond=0).isoformat()
        elif self.partition_type == PartitionType.everyMonth:
            return now.replace(
                day=1, hour=0, minute=0, second=0, microsecond=0
            ).isoformat()

    @property
    def resolved_partition_start(self):
        return self.partition_start or self._default_partition_start()

    @property
    def resolved_partition_end(self):
        return self.partition_end or self._default_partition_end()

    @property
    def distributed_clause(self):
        if not self.distributed_by:
            return "DISTRIBUTED RANDOMLY"
        if isinstance(self.distributed_by, str):
            return f'DISTRIBUTED BY ("{self.distributed_by}")'
        elif isinstance(self.distributed_by, (list, tuple, set)):
            cols = '", "'.join(self.distributed_by)
            return f'DISTRIBUTED BY ("{cols}")'
        raise NotImplementedError(
            f"Unsupported distributed_by type: {type(self.distributed_by)}"
        )

    @property
    def storage_clause(self):
        if self.schema_table == "ods":
            return "WITH (appendonly = true, orientation = column, compresstype = zstd, compresslevel = 1)"
        return ""

    @property
    def partition_clause(self):
        if not self.partition_by or self.partition_type == PartitionType.noPartition:
            return ""

        if self.partition_type == PartitionType.everyDay:
            interval = "day"
            dtype = "date"
        else:
            raise NotImplementedError(
                f"Unsupported partition type: {self.partition_type}"
            )

        return (
            f"PARTITION BY RANGE ({camel_to_snake(self.partition_by)}) (\n"
            f"  START ({dtype} '{self.resolved_partition_start}') INCLUSIVE\n"
            f"  END ({dtype} '{self.resolved_partition_end}') EXCLUSIVE\n"
            f"  EVERY (INTERVAL '1 {interval}')\n"
            f")"
        )

    def _extract_fields(self):
        if isinstance(self.schema_fields, (list, tuple)) and isinstance(
            self.schema_fields[0], (list, tuple)
        ):
            return self.schema_fields[0]
        return self.schema_fields

    @property
    def formatted_fields(self):
        fields = self._extract_fields()
        if not fields:
            raise ValueError("Schema fields are not defined")
        return ",\n    ".join(f'"{camel_to_snake(f["name"])}" {f["type"]}' for f in fields)

    def generate_ddl(self):
        table_name = f'{self.schema_table}."t_{self.source}_{camel_to_snake(self.entity_name)}"'
        ddl = [
            f"CREATE TABLE IF NOT EXISTS {table_name} (",
            self.formatted_fields,
            ")",
        ]

        storage = self.storage_clause
        if storage:
            ddl.append(storage)

        ddl.append(self.distributed_clause)

        partition_clause = self.partition_clause
        if partition_clause:
            ddl.append(partition_clause)

        return "\n".join(ddl) + ";\n"

    def save_to_file(self):
        path = Path(f"t_{self.source}.{self.schema_table}.sql")
        with path.open("a+") as f:
            f.write(self.generate_ddl())
            f.write("\n")
            f.flush()


if __name__ == "__main__":
    source = "tz_bpm"
    for schema_table in ["ods"]:
        for entity in entities:
            ddl = DDLGenerator(
                entity_name=entity["name"],
                source=source,
                distributed_by=entity.get("distributed_fields"),
                partition_by=entity.get("partition_field"),
                partition_type=entity.get("partition_type"),
                schema=entity.get("schema"),
                schema_table=schema_table,
            )
            ddl.save_to_file()

        with open(f"t_{source}.{schema_table}.sql", "a+") as f:
            f.flush()
