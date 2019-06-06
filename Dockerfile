FROM python:3.4-slim

MAINTAINER ZhaoYong

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		mysql-client libmysqlclient-dev \
		postgresql-client libpq-dev \
		sqlite3 \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV DJANGO_VERSION 2.0.3

RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
