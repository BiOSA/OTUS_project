import pymssql
from airflow.hooks.base import BaseHook
from jinja2 import Template
from datetime import timedelta
from airflow.exceptions import AirflowSkipException

def check_src_inc(
    src_conn_id: str,
    source_schema: str,
    entity_name: str,
    inc_col: str,
    **context,
):
    src_conn = BaseHook.get_connection(src_conn_id)
    connection = pymssql.connect(
        server=src_conn.host,
        user=src_conn.login,
        password=src_conn.password,
        database=src_conn.schema,
        port=src_conn.port,
        read_only=True,
    )
    sql = """
    SELECT COUNT(*)
    FROM [{{ source_schema }}].[{{ entity_name }}]
    WHERE {{ inc_col }} >= CAST('{{ lower }}' AS datetime2)
    AND {{ inc_col }} <  CAST('{{ upper }}' AS datetime2)
    """

    rendered_sql = Template(sql).render(
        source_schema=source_schema,
        entity_name=entity_name,
        inc_col=inc_col,
        lower=(context["data_interval_start"] - timedelta(days=1)).strftime("%Y-%m-%d %H:%M:%S"),
        upper=context["data_interval_start"].strftime("%Y-%m-%d %H:%M:%S"),
    )
    print(rendered_sql)
    with connection.cursor() as cursor:
        cursor.execute(rendered_sql)
        res = cursor.fetchall()[0]
        print(res)
    if res[0] == 0:
        raise AirflowSkipException("No data found for incerement.")
    return res
