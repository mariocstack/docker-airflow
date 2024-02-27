FROM apache/airflow:2.8.2
RUN curl -LfO 'https://raw.githubusercontent.com/mariocstack/docker-airflow/main/requirements.txt'
COPY requirements.txt /
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt
