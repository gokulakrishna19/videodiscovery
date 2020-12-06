FROM python:3
ENV PYTHONUNBUFFERED 1

# WORKDIR /usr/src/app
WORKDIR /videodiscovery

ADD . /videodiscovery/

RUN pip install --upgrade pip
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
COPY . .