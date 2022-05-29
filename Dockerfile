FROM debian:bullseye-slim

MAINTAINER lcdunne

COPY sparky/ sparky/

RUN apt update \
    && apt install -y python3 default-jre default-jdk scala wget \
    && wget https://downloads.apache.org/spark/spark-3.1.2/spark-3.1.2-bin-hadoop3.2.tgz \
    && tar -xvzf spark-3.1.2-bin-hadoop3.2.tgz \
    && mv spark-3.1.2-bin-hadoop3.2 /usr/local/spark && rm spark-3.1.2-bin-hadoop3.2.tgz

# Change logging to only show errors.
RUN sed -i "s|log4j.rootCategory=INFO|log4j.rootCategory=ERROR|g" \
    /usr/local/spark/conf/log4j.properties.template \
    && mv /usr/local/spark/conf/log4j.properties.template /usr/local/spark/conf/log4j.properties

ENV PATH="$PATH:/usr/local/spark/bin"
