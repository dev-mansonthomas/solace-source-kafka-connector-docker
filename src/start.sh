#!/bin/bash
echo "/kafka/bin/connect-standalone.sh /kafka/config/connect-standalone.properties /pubsubplus-connector-kafka-source/etc/solace_source.properties"
echo "######################################### - /kafka/config/connect-standalone.properties"
cat /kafka/config/connect-standalone.properties
echo "######################################### - /kafka/config/connect-standalone.properties - END"
echo "######################################### - /pubsubplus-connector-kafka-source/etc/solace_source.properties"
cat /pubsubplus-connector-kafka-source/etc/solace_source.properties
echo "######################################### - /pubsubplus-connector-kafka-source/etc/solace_source.properties - END"

/kafka/bin/connect-standalone.sh /kafka/config/connect-standalone.properties /pubsubplus-connector-kafka-source/etc/solace_source.properties