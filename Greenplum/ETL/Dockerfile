FROM apache/airflow:3.0.2

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir --index-url https://nexus.bistrodengi.ru/repository/pypi-all/simple -r /tmp/requirements.txt
