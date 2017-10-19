#!/bin/sh

topic=$1
repl=$2
partitions=$3

/opt/kafka/bin/kafka-topics.sh --zookeeper zk-headless.kafka.svc.cluster.local:2181 --create --if-not-exists --topic $topic --partitions $partitions --replication-factor $repl
/opt/kafka/bin/kafka-topics.sh --list --zookeeper zk-headless.kafka.svc.cluster.local:2181
/opt/kafka/bin/kafka-topics.sh --describe --zookeeper zk-headless.kafka.svc.cluster.local:2181 --topic $topic
/opt/kafka/bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 --topic $topic --time -1
