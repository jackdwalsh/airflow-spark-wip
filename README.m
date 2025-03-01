# Airflow + Spark Demo

This project sets up a simple integration between **Apache Airflow** and **Apache Spark** using Docker Compose. It demonstrates how to trigger PySpark jobs from Airflow using the `SparkSubmitOperator`.

## Services

| Service            | URL                        |
|--------------------|----------------------------|
| Airflow Web UI     | http://localhost:8080      |
| Spark Master UI    | http://localhost:8081      |

## Prerequisites

- Docker
- Docker Compose

## Getting Started

```bash
./start.sh