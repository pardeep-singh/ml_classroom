FROM python:3.8.2-buster

RUN pip install --no-cache-dir --upgrade pip setuptools

COPY requirements.txt /

RUN pip install --no-cache-dir -r /requirements.txt

RUN jupyter contrib nbextension install --user

RUN jupyter nbextensions_configurator enable --user

EXPOSE 8888
