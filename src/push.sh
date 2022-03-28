#!/bin/bash
. common.sh

docker push mansonthomas/solace-source-kafka-connector-docker:"${SOLACE_SOURCE_CONNECTOR_DOCKER_HUB_VERSION}"