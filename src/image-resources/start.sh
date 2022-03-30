#!/bin/bash
echo "The following command will be run"
echo "/solace/kafka/bin/connect-standalone.sh /solace/kafka/config/connect-standalone.properties /solace/pubsubplus-connector-kafka-source/etc/solace_source.properties"
#echo "######################################### - /solace/kafka/config/connect-standalone.properties"
#cat /solace/kafka/config/connect-standalone.properties
#echo "######################################### - /solace/kafka/config/connect-standalone.properties - END"
#echo "######################################### - /solace/pubsubplus-connector-kafka-source/etc/solace_source.properties"
#cat /solace/pubsubplus-connector-kafka-source/etc/solace_source.properties
#echo "######################################### - /solace/pubsubplus-connector-kafka-source/etc/solace_source.properties - END"

/solace/kafka/bin/connect-standalone.sh /solace/kafka/config/connect-standalone.properties /solace/pubsubplus-connector-kafka-source/etc/solace_source.properties