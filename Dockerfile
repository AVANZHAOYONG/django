FROM python:3.5-slim

MAINTAINER ZhaoYong

WORKDIR /home/docker

ENV DJANGO_VERSION 2.0.3

RUN  pip install django=="$DJANGO_VERSION" paramiko cryptography==2.4.2 configparser pymysql requests pyDes 

EXPOSE 8000

CMD ["python3", "manage.py" ,"runserver","--noreload", "0.0.0.0:8000"]
