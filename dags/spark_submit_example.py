from airflow import DAG
from airflow.providers.apache.spark.operators.spark_submit import SparkSubmitOperator
from datetime import datetime

with DAG(
    dag_id="spark_submit_example_dag",
    start_date=datetime(2025, 3, 1),
    schedule=None,
    catchup=False,
) as dag:

    spark_task = SparkSubmitOperator(
        task_id='spark_submit_task',
        application='/opt/airflow/scripts/spark_script.py',
        conn_id='spark_default',
        env_vars={"JAVA_HOME": "/usr/lib/jvm/java-11-openjdk-amd64"},
        dag=dag,
)