#!/bin/bash
set -e

# Wait for Postgres to be ready
while ! pg_isready -h postgres -p 5432 -U airflow; do
    echo "Waiting for postgres..."
    sleep 5
done

# Initialize Airflow DB
airflow db init