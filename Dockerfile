FROM apache/airflow:2.10.5

#i dont think this can run as root ? 
USER root

# Install OpenJDK 17 and procps (for ps command needed by Spark)
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk procps && \
    rm -rf /var/lib/apt/lists/*


# Set JAVA_HOME globally
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64

# Switch back to airflow user
USER airflow

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir "apache-airflow==2.10.5" -r /requirements.txt
USER airflow