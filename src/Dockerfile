FROM openjdk:18-alpine3.15

ENV SOLACE_SOURCE=2.1.0
ENV KAFKA_MINOR=2.13
ENV KAFKA_MAJOR=2.8.1

LABEL org.opencontainers.image.authors="Thomas Manson - https://github.com/dev-mansonthomas"
LABEL org.opencontainers.image.url="https://github.com/dev-mansonthomas/solace-source-kafka-connector-docker"
LABEL org.opencontainers.image.version=${SOLACE_SOURCE}
LABEL org.opencontainers.image.vendor="http://solace.com/"
LABEL org.opencontainers.image.licenses="Apache-2.0"
LABEL org.opencontainers.image.title="Solace Source Kafka connector in a docker container"
LABEL org.opencontainers.image.base.name="https://registry.hub.docker.com/_/openjdk/openjdk:18-alpine3.15"

RUN apk -U  upgrade         && \
    apk add --no-cache bash && \
    rm -rf  /var/cache/apt/*

RUN adduser -D solace -h /solace     && \
    chown   -R solace:solace /solace && \
    chmod   755 /solace

ADD  https://solaceproducts.github.io/pubsubplus-connector-kafka-source/downloads/pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar ./pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar
ADD  https://downloads.apache.org/kafka/${KAFKA_MAJOR}/kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz                                           ./kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz
COPY --chmod=755 start.sh ./start.sh

RUN tar xf pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar -C /solace                            && \
    ln -s  pubsubplus-connector-kafka-source-${SOLACE_SOURCE} solace/pubsubplus-connector-kafka-source  && \
    rm     pubsubplus-connector-kafka-source-${SOLACE_SOURCE}.tar                                       && \
    tar xf kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz  -C /solace                                          && \
    ln -s  kafka_${KAFKA_MINOR}-${KAFKA_MAJOR} solace/kafka                                             && \
    rm     kafka_${KAFKA_MINOR}-${KAFKA_MAJOR}.tgz                                                      && \
    chown -R solace:solace /solace

USER solace
CMD [ "./start.sh"]
