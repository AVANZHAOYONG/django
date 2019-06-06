FROM python:3.4-slim

MAINTAINER ZhaoYong

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		mysql-client \
		postgresql-client libpq-dev \
		sqlite3 \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV DJANGO_VERSION 2.0.3

RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION" \
        paramiko  \
		configparser \
		mysql-connector-python \
		
		pymysql pyDes 
		
		WORKDIR /home/docker 
		
		EXPOSE 8000
		ENTRYPOINT ["/bin/sh" "-c" "python3.5 manage.py runserver 0.0.0.0:8000"]
