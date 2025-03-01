#!/bin/bash

echo "Starting Airflow & Spark Stack..."

docker compose down --volumes
docker compose up -d

echo "Airflow UI available at: http://localhost:8080"
echo "Spark Master UI available at: http://localhost:8081"

echo "Use 'docker-compose logs -f' to monitor."