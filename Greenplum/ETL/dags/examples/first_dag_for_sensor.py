import json
import textwrap
import pendulum

from airflow.providers.standard.operators.python import PythonOperator

from airflow.sdk import DAG

with DAG(
    "first_dag_for_sensor",
    default_args={"retries": 2},
    description="First dag for sensor",
    schedule="@daily",
    start_date=pendulum.datetime(2025, 5, 22, tz="UTC"),
    catchup=False,
    tags=["sensor"],

) as dag:

    def extract(**kwargs):
        ti = kwargs["ti"]
        data_string = '{"1001": 301.27, "1002": 433.21, "1003": 502.22}'
        ti.xcom_push("order_data", data_string)

    def transform(**kwargs):
        ti = kwargs["ti"]
        extract_data_string = ti.xcom_pull(task_ids="extract", key="order_data")
        order_data = json.loads(extract_data_string)
        total_order_value = 0
        for value in order_data.values():
            total_order_value += value
        total_value = {"total_order_value": total_order_value}
        total_value_json_string = json.dumps(total_value)
        ti.xcom_push("total_order_value", total_value_json_string)

    def load(**kwargs):
        ti = kwargs["ti"]
        total_value_string = ti.xcom_pull(task_ids="transform", key="total_order_value")
        total_order_value = json.loads(total_value_string)
        print(total_order_value)


    extract_task = PythonOperator(
        task_id="extract",
        python_callable=extract,
    )

    transform_task = PythonOperator(
        task_id="transform",
        python_callable=transform,
    )


    load_task = PythonOperator(
        task_id="load",
        python_callable=load,
    )
    
    extract_task >> transform_task >> load_task
