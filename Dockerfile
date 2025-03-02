FROM apache/airflow:2.10.5


USER root

# Install OpenJDK 17 and procps (for ps command needed by Spark)
RUN apt-get update && \
    apt-get install -y openjdk-17-jdk procps && \
    rm -rf /var/lib/apt/lists/*


# Set JAVA_HOME globally -- this will change depending on architecture. 
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-arm64
ENV PATH="$JAVA_HOME/bin:$PATH"

# Switch back to airflow user
USER airflow

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir "apache-airflow==2.10.5" -r /requirements.txt
