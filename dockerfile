FROM apache/airflow:2.8.1-python3.10
COPY requirements.txt /
RUN python -m pip install --upgrade pip && pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt
