#!/bin/sh

topic=$1 
recordSize=$2
sync_option=$3

if [[ $sync_option = "async" ]]; then
	sync_opt=1
elif [[ $sync_option = "sync" ]]; then
	sync_opt=-1
fi

echo $sync_opt

#/opt/kafka/bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic $topic --num-records $recordSize --record-size 5 --throughput -1 --producer-props acks=$sync_opt bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196