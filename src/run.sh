#!/bin/bash
. common.sh

docker run -v "$(pwd)/solace-source.properties:/pubsubplus-connector-kafka-source/etc/solace_source.properties:ro" \
           -v "$(pwd)/connect-standalone.properties:/kafka/config/connect-standalone.properties:ro" \
           --network solace-network \
           -d solace-kafka-source-docker:"${SOLACE_SOURCE_CONNECTOR_VERSION}"


