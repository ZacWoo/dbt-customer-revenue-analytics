from datetime import datetime

from airflow import DAG
from airflow.operators.bash import BashOperator


DBT_BIN = "/Users/zacw/anaconda3/envs/dbt-env/bin/dbt"
DBT_PROJECT_DIR = "/Users/zacw/dbt-practice/test_dbt_project"


with DAG(
    dag_id="customer_revenue_dbt_pipeline",
    description="Run dbt models and tests for customer revenue analytics.",
    start_date=datetime(2026, 6, 1),
    schedule="@daily",
    catchup=False,
    tags=["dbt", "snowflake", "customer_revenue"],
) as dag:

    dbt_run = BashOperator(
        task_id="dbt_run",
        bash_command=f"cd {DBT_PROJECT_DIR} && {DBT_BIN} run",
    )

    dbt_test = BashOperator(
        task_id="dbt_test",
        bash_command=f"cd {DBT_PROJECT_DIR} && {DBT_BIN} test",
    )

    dbt_run >> dbt_test
