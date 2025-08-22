from airflow.hooks.base import BaseHook
import psycopg2
import logging

logger = logging.getLogger(__name__)


def get_gp_connection(gp_conn_id: str):
    gp_conn = BaseHook.get_connection(gp_conn_id)
    gp_conn_params = {
        "host": gp_conn.host,
        "port": gp_conn.port,
        "dbname": gp_conn.schema,
        "user": gp_conn.login,
        "password": gp_conn.password,
    }
    gp_conn = psycopg2.connect(**gp_conn_params)
    return gp_conn


def truncate_table_gp(entity_name: str, gp_conn_id: str, branch: str, source: str):
    gp_conn = get_gp_connection(gp_conn_id)
    gp_cursor = gp_conn.cursor()
    try:
        sql = f"Truncate table stg.t_{branch}_{source}_{entity_name};"
        gp_cursor.execute(sql)
        gp_conn.commit()
        logger.info(sql)
    except Exception as e:
        gp_conn.rollback()
        logger.info("Error while truncating table:", e)
        raise e
    finally:
        gp_cursor.close()
        gp_conn.close()
