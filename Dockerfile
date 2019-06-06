FROM python:3.5-slim

MAINTAINER ZhaoYong

# RUN apt-get update \
#     && apt-get install -y --no-install-recommends \
#         postgresql-client \
#     && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
#COPY requirements.txt ./
#RUN pip install -r requirements.txt
#COPY . .

ENV DJANGO_VERSION 2.0.3

RUN pip install  django=="$DJANGO_VERSION"

EXPOSE 8000
CMD ["python", "manage.py","--noreload" ,"runserver", "0.0.0.0:8000"]
