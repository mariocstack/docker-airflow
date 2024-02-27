FROM apache/airflow:2.8.2
RUN curl -LfO 'https://github.com/mariocstack/docker-airflow/blob/main/requirements.txt'
COPY requirements.txt
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt
