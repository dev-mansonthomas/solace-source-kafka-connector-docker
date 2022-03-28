#!/bin/bash
. common.sh
docker build -t solace-kafka-source-docker:"${SOLACE_SOURCE_CONNECTOR_VERSION}" .