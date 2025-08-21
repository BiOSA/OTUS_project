# from airflow import DAG
# from airflow.operators.python import PythonOperator
# from airflow.operators.bash import BashOperator
# from datetime import datetime
# from bpm.tz.config import entities, branch, source, gp_conn_id, src_conn_id
# from utils.mssql_utils import (
#     extract_full_table_from_mssql,
#     truncate_table_gp,
#     extract_table_increment_from_mssql,
# )
# from utils.gp_utils import PartitionType
# import os

# base_dir = os.path.dirname(__file__)


# default_args = {
#     "depends_on_past": False,
#     "retries": 1,
# }
# for entity in entities:
#     with DAG(
#         dag_id=f"{branch}_{source}.{entity['name']}",
#         default_args=default_args,
#         description=f"Load table {entity['name']} from {source}",
#         schedule="@daily",
#         start_date=datetime(2025, 7, 9),
#         catchup=True,
#     ) as dag:
#         if entity["partition_for"] == PartitionType.noPartition:
#             truncate_table = PythonOperator(
#                 task_id="truncate_table",
#                 python_callable=truncate_table_gp,
#                 op_kwargs={
#                     "entity_name": entity["name"],
#                     "schema": entity["schema"],
#                     "branch": branch,
#                     "gp_conn_id": gp_conn_id,
#                     "source": source,
#                 },
#             )

#             extract_data = PythonOperator(
#                 task_id="extract_data",
#                 python_callable=extract_full_table_from_mssql,
#                 op_kwargs={
#                     "entity_name": entity["name"],
#                     "schema": entity["schema"],
#                     "branch": branch,
#                     "gp_conn_id": gp_conn_id,
#                     "src_conn_id": src_conn_id,
#                     "source": source,
#                 },
#             )

#             truncate_table >> extract_data
#         else:
#             sql_path = os.path.join(base_dir, entity["extract_sql"])
#             with open(sql_path, "r") as file:
#                 sql_query = file.read()
#             extract_data = PythonOperator(
#                 task_id="extract_data",
#                 python_callable=extract_table_increment_from_mssql,
#                 op_kwargs={
#                     "entity_name": entity["name"],
#                     "schema": entity["schema"],
#                     "branch": branch,
#                     "gp_conn_id": gp_conn_id,
#                     "src_conn_id": src_conn_id,
#                     "source": source,
#                     "sql_query": sql_query,
#                 },
#             )
