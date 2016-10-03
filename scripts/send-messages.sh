#!/bin/bash

echo "Removing old messages"
rm -f /tmp/messages.txt

echo "Generating random messages"
for MSG_ID in `seq 1 10000`
do
    echo -e "{ "messageId": $RANDOM };" >> /tmp/messages.txt
done

cd /opt/kafka_2.11-0.10.0.1
cat /tmp/messages.txt | bin/kafka-console-producer.sh --broker-list kafka1-dc1:9092 --topic mirror.maker.topic
