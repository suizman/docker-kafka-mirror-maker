#!/bin/bash

echo "Starting Kafka Mirror maker"
cd /opt/kafka_2.11-0.10.0.1 && \
bin/kafka-mirror-maker.sh --consumer.config config/consumer.properties \
--producer.config config/producer.properties \
--whitelist "mirror.maker.topic"