bin/kafka-server-stop.sh
bin/zookeeper-server-stop.sh
rm -rf /tmp/zookeeper/ /tmp/kafka-logs/
bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
bin/kafka-server-start.sh -daemon config/server.properties
bin/kafka-topics.sh --zookeeper 70.0.0.84:2181 --create --if-not-exists --topic kbrep3-topic --partitions 3 --replication-factor 3

bin/kafka-topics.sh --create --zookeeper 70.0.0.84:2181 --replication-factor 1 --partitions 3 --topic test
bin/kafka-topics.sh --list --zookeeper 70.0.0.84:2181
bin/kafka-console-producer.sh --broker-list 70.0.0.86:9092 --topic test
bin/kafka-console-consumer.sh --bootstrap-server 70.0.0.86:9092 --topic test --from-beginning
bin/kafka-topics.sh --describe --zookeeper 70.0.0.84:2181 --topic test


bin/kafka-topics.sh --zookeeper 70.0.0.84:2181 --create --if-not-exists --topic kbrep3-topic --partitions 3 --replication-factor 3
bin/kafka-topics.sh --describe --zookeeper 70.0.0.84:2181 --topic kbrep3-topic
bin/kafka-console-producer.sh --broker-list 70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 --topic kbrep3-topic
bin/kafka-console-consumer.sh --zookeeper 70.0.0.84:2181 --topic kbrep3-topic --from-beginning

bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list 70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 --topic kbrep3-topic --time -1
