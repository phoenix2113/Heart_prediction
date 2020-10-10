FROM python:3.7-alpine
MAINTAINER Mansukh Sonawala

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt
run python manage.py runserver
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D msonawala
USER msonawala
