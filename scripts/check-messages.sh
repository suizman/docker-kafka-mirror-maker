#!/bin/bash

cd /opt/kafka_2.11-0.10.0.1
bin/kafka-console-consumer.sh --zookeeper zk1-$1:2181 --topic mirror.maker.topic --from-beginning
