FROM python:3.11-slim


RUN apt-get update && apt-get install -y \
    postgresql-client \
    netcat-openbsd \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*


RUN pip install dbt-core dbt-postgres

WORKDIR /usr/app