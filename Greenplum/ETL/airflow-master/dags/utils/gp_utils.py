from enum import Enum
from dags.utils.formatting import camel_to_snake

class PartitionType(Enum):
    def __new__(cls, value: object, data_type) -> "PartitionType":
        obj = object.__new__(cls)
        obj._value_ = value
        obj._data_type_ = data_type
        return obj

    @property
    def data_type(self):
        return self._data_type_

    everyDay = "day", "date"
    everyMonth = "month", "date"
    noPartition = None, None


class Layer(Enum):
    EXT = "ext"
    STG = "stg"
    ODS = "ods"


class PxfServer(Enum):
    tz_bpm = "sql_tz_bpmonlinetz"
    ez_bpm = "sql_eqz_bpmonlinetz"


class TestRule(Enum):
    DO_SKIP = "skip"
    DO_FAIL = "fail"


def get_field_list_type(schema: list, is_external: bool) -> str:
    lines = []
    for column in schema:
        if is_external and column["name"].startswith("Etl"):
            continue
        name = column["name"] if is_external else camel_to_snake(column["name"])
        field_type = column["type"]
        lines.append(f'    "{name}" {field_type}')
    return "\n" + ",\n".join(lines) + "\n"



def get_field(schemas_field):
    if isinstance(schemas_field[0], (list, tuple)):
        return get_field(schemas_field[0])
    return ",\n".join([f"""\"{camel_to_snake(field["name"])}\"""" for field in schemas_field])


def get_inserted_field(schemas_field, format_data):
    if isinstance(schemas_field[0], (list, tuple)):
        return get_inserted_field(schemas_field[0], format_data)
    else:
        fields_str = []
        for field in schemas_field:
            fields_str.append(f"""\"{camel_to_snake(field["name"])}\"::{field["type"]}""")
        return ",\n\t".join([field_str for field_str in fields_str])


def to_camel_case(snake_str: str) -> str:
    parts = snake_str.split("_")
    return parts[0] + "".join(word.capitalize() for word in parts[1:])

def quote(value):
    if isinstance(value, int):
        return value
    return f"'{value}'"