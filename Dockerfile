FROM debian:bullseye-slim

MAINTAINER lcdunne

RUN apt-get update \
    && apt-get install -y python3 \
    && apt install -y default-jre \
    && apt install -y default-jdk \
    && echo javac -version \
    && apt-get -y install scala \
    && apt-get -y install wget \
    && wget https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz \
    && tar -xvzf spark-3.1.2-bin-hadoop3.2.tgz \
    && mkdir -p /local/spark \
    && mv spark-3.1.2-bin-hadoop3.2 /usr/local/spark

ENV PATH="$PATH:/usr/local/spark/bin"
