#!/bin/bash
. common.sh

docker rm --force /solace-source-connector

docker run -v "$(pwd)/solace-source.properties:/solace/pubsubplus-connector-kafka-source/etc/solace_source.properties:ro" \
           -v "$(pwd)/connect-standalone.properties:/solace/kafka/config/connect-standalone.properties:ro"                \
           --network solace-network                                                                                       \
           --name solace-source-connector                                                                                 \
           -d mansonthomas/solace-source-kafka-connector-docker:"${SOLACE_SOURCE_CONNECTOR_VERSION}"



