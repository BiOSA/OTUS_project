import pendulum
from airflow.providers.standard.operators.python import PythonOperator
from airflow.sensors.external_task import ExternalTaskSensor

from airflow.sdk import DAG

with DAG(
    "second_dag_for_sensor",
    default_args={"retries": 2},
    description="Second dag for sensor",
    schedule="@daily",
    start_date=pendulum.datetime(2025, 5, 22, tz="UTC"),
    catchup=False,
    tags=["sensor"],
) as dag:

    def print_now():
        now = pendulum.now()
        print(f"Current time: {now}")

    print_task = PythonOperator(
        task_id="print_task",
        python_callable=print_now,
    )

    sensor = ExternalTaskSensor(
        task_id="sensor",
        external_dag_id="first_dag_for_sensor",
        external_task_id="load",
        allowed_states=["success"],
        poke_interval=30,
        mode="poke",
    )

    sensor >> print_task
