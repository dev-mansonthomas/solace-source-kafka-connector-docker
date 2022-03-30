# This a container version of Solace Source Kafka Connector

The Solace Source Kafka Connector repo is here : 
https://github.com/SolaceProducts/pubsubplus-connector-kafka-source


## Configuration instructions 

### Solace Configuration
cp solace-source-template.properties solace-source.properties

edit the new file and fill at least the following properties :

- kafka.topic
- sol.host
- sol.username
- sol.password
- sol.vpn_name
- sol.topics

### Kafka Configuration

Edit connect-standalone.properties
and adjust the connection settings to connect to Kafka

##Run the container

Run the run.sh script
./run.sh

it will map the two configuration files to

##Container noteworthy path

- binaries are copied in /solace folder, owned by solace user
- Kafka connect is launched with solace user
- symlink are used to have stable path whatever the version of the subcomponents
- **Custom Message Processor**
  - /solace/pubsubplus-connector-kafka-source/lib/ is where you want to copy your own implementation of message processor
  - sol.message_processor_class= is the property to update to specify the custom processor class


```
ls -la /solace
kafka -> kafka_2.13-2.8.1
kafka_2.13-2.8.1
pubsubplus-connector-kafka-source -> pubsubplus-connector-kafka-source-2.1.0
pubsubplus-connector-kafka-source-2.1.0
```