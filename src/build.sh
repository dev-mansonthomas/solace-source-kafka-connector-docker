#!/bin/bash
. common.sh
docker build -t mansonthomas/solace-source-kafka-connector-docker:"${SOLACE_SOURCE_CONNECTOR_VERSION}" .