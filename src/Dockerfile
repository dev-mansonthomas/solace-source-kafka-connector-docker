FROM ubuntu:22.04

ENV SOLACE_SOURCE=2.1.0
ENV KAFKA_MINOR=2.13
ENV KAFKA_MAJOR=2.8.1

RUN apt-get update && \
    apt-get install -y \
    openjdk-17-jdk-headless

ADD https://solaceproducts.github.io/pubsubplus-connector-kafka-source/downloads/pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar ./pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar
ADD https://downloads.apache.org/kafka/${KAFKA_MAJOR}/kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz ./kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz
ADD start.sh /start.sh

RUN tar xf pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar                                && \
    ln -s  pubsubplus-connector-kafka-source-${SOLACE_SOURCE} pubsubplus-connector-kafka-source  && \
    rm     pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar                                && \
    tar xf kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz                                               && \
    ln -s  kafka_${KAFKA_MINOR}-${KAFKA_MAJOR} kafka                                             && \
    rm     kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz

CMD [ "/start.sh"]
