FROM python:3.8.2-buster

RUN pip install --no-cache-dir --upgrade pip setuptools

COPY requirements.txt /

RUN pip install --no-cache-dir -r /requirements.txt

EXPOSE 8888