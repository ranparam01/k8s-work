# Kafka benchmarking results

## Single Producer, no replication with PX 

## 10 mil (5KB Payload)

```
With PX Replication = 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1273592 records sent, 254311.5 records/sec (1.21 MB/sec), 16.4 ms avg latency, 372.0 max latency.
1881477 records sent, 376295.4 records/sec (1.79 MB/sec), 9.1 ms avg latency, 196.0 max latency.
3814013 records sent, 758403.9 records/sec (3.62 MB/sec), 6.4 ms avg latency, 173.0 max latency.
10000000 records sent, 531886.601777 records/sec (2.54 MB/sec), 7.81 ms avg latency, 372.00 ms max latency, 1 ms 50th, 57 ms 95th, 122 ms 99th, 169 ms 99.9th.


With PX replication = 1

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

2246713 records sent, 449342.6 records/sec (2.14 MB/sec), 9.7 ms avg latency, 349.0 max latency.
3139250 records sent, 626221.8 records/sec (2.99 MB/sec), 8.3 ms avg latency, 176.0 max latency.
1838390 records sent, 367678.0 records/sec (1.75 MB/sec), 6.9 ms avg latency, 223.0 max latency.
1756722 records sent, 347590.4 records/sec (1.66 MB/sec), 10.6 ms avg latency, 249.0 max latency.
10000000 records sent, 421194.507624 records/sec (2.01 MB/sec), 8.48 ms avg latency, 349.00 ms max latency, 1 ms 50th, 60 ms 95th, 126 ms 99th, 189 ms 99.9th.

With PX replication = 1 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1982651 records sent, 393852.0 records/sec (1.88 MB/sec), 13.1 ms avg latency, 464.0 max latency.
1717639 records sent, 343527.8 records/sec (1.64 MB/sec), 6.7 ms avg latency, 227.0 max latency.
4195679 records sent, 839135.8 records/sec (4.00 MB/sec), 6.4 ms avg latency, 160.0 max latency.
10000000 records sent, 594919.388423 records/sec (2.84 MB/sec), 7.06 ms avg latency, 464.00 ms max latency, 1 ms 50th, 50 ms 95th, 110 ms 99th, 155 ms 99.9th.

Without PX. 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

4906721 records sent, 981344.2 records/sec (4.68 MB/sec), 2.0 ms avg latency, 234.0 max latency.
10000000 records sent, 1064509.261231 records/sec (5.08 MB/sec), 2.33 ms avg latency, 234.00 ms max latency, 1 ms 50th, 9 ms 95th, 32 ms 99th, 77 ms 99.9th.
```

## 15 mil (5KB Payload)
```
With PX Replication = 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 15000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1455650 records sent, 290723.0 records/sec (1.39 MB/sec), 15.8 ms avg latency, 379.0 max latency.
1589134 records sent, 317002.6 records/sec (1.51 MB/sec), 8.4 ms avg latency, 229.0 max latency.
1566200 records sent, 307943.4 records/sec (1.47 MB/sec), 8.5 ms avg latency, 198.0 max latency.
3131432 records sent, 626286.4 records/sec (2.99 MB/sec), 6.5 ms avg latency, 160.0 max latency.
1814173 records sent, 360240.9 records/sec (1.72 MB/sec), 7.0 ms avg latency, 304.0 max latency.
3316767 records sent, 663353.4 records/sec (3.16 MB/sec), 9.6 ms avg latency, 308.0 max latency.
15000000 records sent, 433789.294080 records/sec (2.07 MB/sec), 8.87 ms avg latency, 379.00 ms max latency, 1 ms 50th, 97 ms 95th, 166 ms 99th, 231 ms 99.9th.

With PX replication = 1

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 15000000 --record-size 5 --throughput -1 --producer-props bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1511423 records sent, 302284.6 records/sec (1.44 MB/sec), 55.7 ms avg latency, 596.0 max latency.
2746291 records sent, 548819.1 records/sec (2.62 MB/sec), 8.8 ms avg latency, 282.0 max latency.
4969216 records sent, 993843.2 records/sec (4.74 MB/sec), 5.7 ms avg latency, 163.0 max latency.
3048760 records sent, 609752.0 records/sec (2.91 MB/sec), 6.1 ms avg latency, 229.0 max latency.
15000000 records sent, 672826.769534 records/sec (3.21 MB/sec), 11.17 ms avg latency, 596.00 ms max latency, 1 ms 50th, 15 ms 95th, 84 ms 99th, 148 ms 99.9th.

With PX replication = 1 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 15000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1406606 records sent, 281321.2 records/sec (1.34 MB/sec), 18.5 ms avg latency, 420.0 max latency.
2454366 records sent, 490873.2 records/sec (2.34 MB/sec), 7.9 ms avg latency, 143.0 max latency.
4435849 records sent, 865700.4 records/sec (4.13 MB/sec), 5.7 ms avg latency, 177.0 max latency.
3708048 records sent, 741609.6 records/sec (3.54 MB/sec), 5.2 ms avg latency, 176.0 max latency.
15000000 records sent, 642370.776412 records/sec (3.06 MB/sec), 7.12 ms avg latency, 420.00 ms max latency, 1 ms 50th, 34 ms 95th, 98 ms 99th, 146 ms 99.9th.

Without PX 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 15000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5182190 records sent, 1036438.0 records/sec (4.94 MB/sec), 2.2 ms avg latency, 259.0 max latency.
7156595 records sent, 1431319.0 records/sec (6.83 MB/sec), 1.3 ms avg latency, 30.0 max latency.
15000000 records sent, 1264755.480607 records/sec (6.03 MB/sec), 1.51 ms avg latency, 259.00 ms max latency, 1 ms 50th, 4 ms 95th, 17 ms 99th, 29 ms 99.9th.
```

## 25 mil (5KB Payload)
```
With PX Replication = 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1569928 records sent, 313233.8 records/sec (1.49 MB/sec), 12.8 ms avg latency, 368.0 max latency.
2766688 records sent, 552343.4 records/sec (2.63 MB/sec), 9.4 ms avg latency, 202.0 max latency.
1362262 records sent, 269915.2 records/sec (1.29 MB/sec), 8.1 ms avg latency, 170.0 max latency.
3284618 records sent, 656923.6 records/sec (3.13 MB/sec), 4.2 ms avg latency, 174.0 max latency.
2956603 records sent, 591320.6 records/sec (2.82 MB/sec), 5.0 ms avg latency, 182.0 max latency.
2504464 records sent, 499195.5 records/sec (2.38 MB/sec), 4.9 ms avg latency, 166.0 max latency.
2333685 records sent, 456154.2 records/sec (2.18 MB/sec), 29.5 ms avg latency, 441.0 max latency.
3718735 records sent, 733767.8 records/sec (3.50 MB/sec), 7.9 ms avg latency, 197.0 max latency.
2734497 records sent, 545263.6 records/sec (2.60 MB/sec), 5.5 ms avg latency, 210.0 max latency.
25000000 records sent, 522990.669846 records/sec (2.49 MB/sec), 8.88 ms avg latency, 441.00 ms max latency, 1 ms 50th, 56 ms 95th, 162 ms 99th, 315 ms 99.9th.

With PX Replication = 1

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1290652 records sent, 255069.6 records/sec (1.22 MB/sec), 16.3 ms avg latency, 453.0 max latency.
1273212 records sent, 252822.1 records/sec (1.21 MB/sec), 12.2 ms avg latency, 218.0 max latency.
1931968 records sent, 386393.6 records/sec (1.84 MB/sec), 9.3 ms avg latency, 219.0 max latency.
1293797 records sent, 258191.4 records/sec (1.23 MB/sec), 7.9 ms avg latency, 175.0 max latency.
1306618 records sent, 258992.7 records/sec (1.23 MB/sec), 8.0 ms avg latency, 225.0 max latency.
2238363 records sent, 447672.6 records/sec (2.13 MB/sec), 5.2 ms avg latency, 207.0 max latency.
2464202 records sent, 490290.9 records/sec (2.34 MB/sec), 5.1 ms avg latency, 153.0 max latency.
2873032 records sent, 574606.4 records/sec (2.74 MB/sec), 4.1 ms avg latency, 181.0 max latency.
2872629 records sent, 573035.9 records/sec (2.73 MB/sec), 3.7 ms avg latency, 216.0 max latency.
2996352 records sent, 593572.1 records/sec (2.83 MB/sec), 4.3 ms avg latency, 221.0 max latency.
1297284 records sent, 256633.8 records/sec (1.22 MB/sec), 10.3 ms avg latency, 351.0 max latency.
25000000 records sent, 423484.771488 records/sec (2.02 MB/sec), 6.60 ms avg latency, 453.00 ms max latency, 1 ms 50th, 42 ms 95th, 120 ms 99th, 212 ms 99.9th.

With PX Replication = 1 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1423734 records sent, 284632.9 records/sec (1.36 MB/sec), 16.4 ms avg latency, 352.0 max latency.
3231687 records sent, 646337.4 records/sec (3.08 MB/sec), 6.1 ms avg latency, 202.0 max latency.
4129659 records sent, 815332.5 records/sec (3.89 MB/sec), 7.6 ms avg latency, 249.0 max latency.
4576967 records sent, 915393.4 records/sec (4.36 MB/sec), 4.2 ms avg latency, 147.0 max latency.
4518261 records sent, 903652.2 records/sec (4.31 MB/sec), 8.5 ms avg latency, 229.0 max latency.
2505889 records sent, 499181.1 records/sec (2.38 MB/sec), 4.3 ms avg latency, 181.0 max latency.
4225674 records sent, 837264.5 records/sec (3.99 MB/sec), 22.2 ms avg latency, 507.0 max latency.
25000000 records sent, 697427.885957 records/sec (3.33 MB/sec), 9.58 ms avg latency, 507.00 ms max latency, 1 ms 50th, 58 ms 95th, 185 ms 99th, 455 ms 99.9th.

Without PX

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5401275 records sent, 1080255.0 records/sec (5.15 MB/sec), 2.0 ms avg latency, 212.0 max latency.
6323585 records sent, 1264717.0 records/sec (6.03 MB/sec), 1.2 ms avg latency, 33.0 max latency.
6351348 records sent, 1270269.6 records/sec (6.06 MB/sec), 1.0 ms avg latency, 26.0 max latency.
6044584 records sent, 1208916.8 records/sec (5.76 MB/sec), 0.9 ms avg latency, 26.0 max latency.
25000000 records sent, 1201114.634381 records/sec (5.73 MB/sec), 1.24 ms avg latency, 212.00 ms max latency, 1 ms 50th, 2 ms 95th, 14 ms 99th, 26 ms 99.9th.
```

## 50 mil (5KB Payload)
```
With PX Replication = 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1221403 records sent, 241193.3 records/sec (1.15 MB/sec), 17.1 ms avg latency, 281.0 max latency.
3347409 records sent, 669481.8 records/sec (3.19 MB/sec), 8.9 ms avg latency, 206.0 max latency.
3846634 records sent, 769326.8 records/sec (3.67 MB/sec), 7.5 ms avg latency, 189.0 max latency.
2596610 records sent, 519322.0 records/sec (2.48 MB/sec), 4.7 ms avg latency, 170.0 max latency.
3121050 records sent, 616321.1 records/sec (2.94 MB/sec), 7.0 ms avg latency, 318.0 max latency.
2138640 records sent, 426959.5 records/sec (2.04 MB/sec), 4.6 ms avg latency, 203.0 max latency.
1861299 records sent, 372259.8 records/sec (1.78 MB/sec), 6.6 ms avg latency, 245.0 max latency.
3998711 records sent, 799742.2 records/sec (3.81 MB/sec), 3.8 ms avg latency, 133.0 max latency.
1781826 records sent, 353256.5 records/sec (1.68 MB/sec), 4.6 ms avg latency, 209.0 max latency.
1403416 records sent, 280683.2 records/sec (1.34 MB/sec), 7.3 ms avg latency, 227.0 max latency.
1878046 records sent, 373220.6 records/sec (1.78 MB/sec), 6.2 ms avg latency, 197.0 max latency.
2106874 records sent, 420617.7 records/sec (2.01 MB/sec), 4.9 ms avg latency, 204.0 max latency.
2065145 records sent, 413029.0 records/sec (1.97 MB/sec), 5.3 ms avg latency, 136.0 max latency.
1369530 records sent, 273523.1 records/sec (1.30 MB/sec), 6.2 ms avg latency, 221.0 max latency.
2871900 records sent, 574380.0 records/sec (2.74 MB/sec), 6.2 ms avg latency, 170.0 max latency.
3807054 records sent, 761410.8 records/sec (3.63 MB/sec), 4.9 ms avg latency, 158.0 max latency.
3780562 records sent, 756112.4 records/sec (3.61 MB/sec), 3.4 ms avg latency, 172.0 max latency.
4936775 records sent, 987355.0 records/sec (4.71 MB/sec), 4.5 ms avg latency, 126.0 max latency.
50000000 records sent, 544994.768050 records/sec (2.60 MB/sec), 5.81 ms avg latency, 318.00 ms max latency, 1 ms 50th, 39 ms 95th, 100 ms 99th, 193 ms 99.9th.

With PX Replication = 1

bin/kafka-run-class.sh org.apache.kafka.tools.Produ1ce
rPerformance --topic kbrep1-topic-px --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1494367 records sent, 298515.2 records/sec (1.42 MB/sec), 14.4 ms avg latency, 299.0 max latency.
3259595 records sent, 651919.0 records/sec (3.11 MB/sec), 8.3 ms avg latency, 204.0 max latency.
2916767 records sent, 582072.8 records/sec (2.78 MB/sec), 9.0 ms avg latency, 235.0 max latency.
3849770 records sent, 769954.0 records/sec (3.67 MB/sec), 6.2 ms avg latency, 174.0 max latency.
4910710 records sent, 982142.0 records/sec (4.68 MB/sec), 7.5 ms avg latency, 210.0 max latency.
3857992 records sent, 763656.4 records/sec (3.64 MB/sec), 6.3 ms avg latency, 215.0 max latency.
3021015 records sent, 602516.0 records/sec (2.87 MB/sec), 8.5 ms avg latency, 205.0 max latency.
3019625 records sent, 602358.9 records/sec (2.87 MB/sec), 13.3 ms avg latency, 300.0 max latency.
2152100 records sent, 428876.0 records/sec (2.05 MB/sec), 13.7 ms avg latency, 448.0 max latency.
3663186 records sent, 732637.2 records/sec (3.49 MB/sec), 5.8 ms avg latency, 155.0 max latency.
5779071 records sent, 1139182.1 records/sec (5.43 MB/sec), 6.3 ms avg latency, 162.0 max latency.
4773062 records sent, 939024.6 records/sec (4.48 MB/sec), 6.2 ms avg latency, 151.0 max latency.
2994281 records sent, 596114.1 records/sec (2.84 MB/sec), 4.4 ms avg latency, 164.0 max latency.
50000000 records sent, 713276.936904 records/sec (3.40 MB/sec), 7.43 ms avg latency, 448.00 ms max latency, 1 ms 50th, 53 ms 95th, 114 ms 99th, 233 ms 99.9th.

With PX Replication = 1 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1878040 records sent, 375608.0 records/sec (1.79 MB/sec), 11.9 ms avg latency, 336.0 max latency.
2975976 records sent, 594719.4 records/sec (2.84 MB/sec), 11.9 ms avg latency, 198.0 max latency.
1236246 records sent, 244124.4 records/sec (1.16 MB/sec), 8.0 ms avg latency, 205.0 max latency.
1653961 records sent, 330527.8 records/sec (1.58 MB/sec), 7.9 ms avg latency, 161.0 max latency.
1762683 records sent, 349877.5 records/sec (1.67 MB/sec), 8.5 ms avg latency, 244.0 max latency.
2834632 records sent, 565456.2 records/sec (2.70 MB/sec), 9.1 ms avg latency, 273.0 max latency.
1998148 records sent, 397483.2 records/sec (1.90 MB/sec), 6.8 ms avg latency, 225.0 max latency.
2802803 records sent, 556222.1 records/sec (2.65 MB/sec), 6.6 ms avg latency, 177.0 max latency.
2936287 records sent, 583059.4 records/sec (2.78 MB/sec), 3.8 ms avg latency, 178.0 max latency.
1331514 records sent, 265983.6 records/sec (1.27 MB/sec), 7.9 ms avg latency, 218.0 max latency.
1565180 records sent, 308592.3 records/sec (1.47 MB/sec), 7.5 ms avg latency, 227.0 max latency.
3536480 records sent, 704197.5 records/sec (3.36 MB/sec), 5.0 ms avg latency, 162.0 max latency.
2723846 records sent, 544769.2 records/sec (2.60 MB/sec), 5.9 ms avg latency, 152.0 max latency.
3187330 records sent, 636193.6 records/sec (3.03 MB/sec), 7.2 ms avg latency, 198.0 max latency.
1310074 records sent, 261491.8 records/sec (1.25 MB/sec), 9.9 ms avg latency, 251.0 max latency.
2787281 records sent, 556232.5 records/sec (2.65 MB/sec), 3.9 ms avg latency, 204.0 max latency.
2556368 records sent, 511273.6 records/sec (2.44 MB/sec), 8.2 ms avg latency, 229.0 max latency.
1307412 records sent, 257923.1 records/sec (1.23 MB/sec), 8.3 ms avg latency, 273.0 max latency.
4395748 records sent, 879149.6 records/sec (4.19 MB/sec), 3.6 ms avg latency, 213.0 max latency.
4563594 records sent, 911989.2 records/sec (4.35 MB/sec), 4.8 ms avg latency, 168.0 max latency.
50000000 records sent, 492125.984252 records/sec (2.35 MB/sec), 6.81 ms avg latency, 336.00 ms max latency, 1 ms 50th, 51 ms 95th, 119 ms 99th, 196 ms 99.9th.

Without PX

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5366989 records sent, 1073397.8 records/sec (5.12 MB/sec), 2.1 ms avg latency, 245.0 max latency.
5963197 records sent, 1192639.4 records/sec (5.69 MB/sec), 1.4 ms avg latency, 59.0 max latency.
6221354 records sent, 1244270.8 records/sec (5.93 MB/sec), 1.3 ms avg latency, 86.0 max latency.
5931316 records sent, 1186263.2 records/sec (5.66 MB/sec), 1.1 ms avg latency, 28.0 max latency.
5861881 records sent, 1172376.2 records/sec (5.59 MB/sec), 1.0 ms avg latency, 29.0 max latency.
6071443 records sent, 1214288.6 records/sec (5.79 MB/sec), 1.0 ms avg latency, 32.0 max latency.
6339225 records sent, 1267845.0 records/sec (6.05 MB/sec), 1.0 ms avg latency, 23.0 max latency.
6375966 records sent, 1275193.2 records/sec (6.08 MB/sec), 0.9 ms avg latency, 26.0 max latency.
50000000 records sent, 1201028.080037 records/sec (5.73 MB/sec), 1.21 ms avg latency, 245.00 ms max latency, 1 ms 50th, 2 ms 95th, 13 ms 99th, 34 ms 99.9th.
```

## 200 mil  (5KB Payload)
```
With PX replication = 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1573380 records sent, 311190.7 records/sec (1.48 MB/sec), 12.8 ms avg latency, 392.0 max latency.
1413596 records sent, 282719.2 records/sec (1.35 MB/sec), 11.3 ms avg latency, 214.0 max latency.
2766378 records sent, 553275.6 records/sec (2.64 MB/sec), 4.5 ms avg latency, 154.0 max latency.
2800985 records sent, 556966.6 records/sec (2.66 MB/sec), 5.5 ms avg latency, 199.0 max latency.
1911843 records sent, 382368.6 records/sec (1.82 MB/sec), 5.5 ms avg latency, 215.0 max latency.
2285928 records sent, 457185.6 records/sec (2.18 MB/sec), 19.2 ms avg latency, 366.0 max latency.
2024906 records sent, 397742.3 records/sec (1.90 MB/sec), 8.3 ms avg latency, 169.0 max latency.
1281443 records sent, 255573.0 records/sec (1.22 MB/sec), 7.6 ms avg latency, 174.0 max latency.
2571088 records sent, 513909.3 records/sec (2.45 MB/sec), 8.4 ms avg latency, 218.0 max latency.
1276706 records sent, 255341.2 records/sec (1.22 MB/sec), 8.4 ms avg latency, 190.0 max latency.
2467694 records sent, 493538.8 records/sec (2.35 MB/sec), 5.3 ms avg latency, 216.0 max latency.
3413487 records sent, 681334.7 records/sec (3.25 MB/sec), 6.3 ms avg latency, 130.0 max latency.
2190462 records sent, 437479.9 records/sec (2.09 MB/sec), 4.4 ms avg latency, 146.0 max latency.
1569225 records sent, 310737.6 records/sec (1.48 MB/sec), 6.9 ms avg latency, 216.0 max latency.
3779143 records sent, 755828.6 records/sec (3.60 MB/sec), 4.0 ms avg latency, 173.0 max latency.
4388138 records sent, 877627.6 records/sec (4.18 MB/sec), 4.4 ms avg latency, 200.0 max latency.
2458695 records sent, 491739.0 records/sec (2.34 MB/sec), 5.7 ms avg latency, 195.0 max latency.
4207306 records sent, 837941.8 records/sec (4.00 MB/sec), 6.3 ms avg latency, 234.0 max latency.
4339003 records sent, 867280.2 records/sec (4.14 MB/sec), 5.5 ms avg latency, 178.0 max latency.
3210648 records sent, 642129.6 records/sec (3.06 MB/sec), 4.1 ms avg latency, 158.0 max latency.
1957216 records sent, 387414.1 records/sec (1.85 MB/sec), 8.1 ms avg latency, 351.0 max latency.
2832301 records sent, 558639.3 records/sec (2.66 MB/sec), 4.5 ms avg latency, 158.0 max latency.
2220726 records sent, 444145.2 records/sec (2.12 MB/sec), 7.7 ms avg latency, 224.0 max latency.
2429474 records sent, 470554.7 records/sec (2.24 MB/sec), 9.0 ms avg latency, 206.0 max latency.
2885467 records sent, 566333.1 records/sec (2.70 MB/sec), 5.1 ms avg latency, 206.0 max latency.
2267270 records sent, 453001.0 records/sec (2.16 MB/sec), 6.0 ms avg latency, 194.0 max latency.
3557904 records sent, 709028.3 records/sec (3.38 MB/sec), 5.5 ms avg latency, 164.0 max latency.
2033455 records sent, 405555.4 records/sec (1.93 MB/sec), 4.9 ms avg latency, 200.0 max latency.
2035490 records sent, 402828.0 records/sec (1.92 MB/sec), 5.2 ms avg latency, 203.0 max latency.
1239055 records sent, 247267.0 records/sec (1.18 MB/sec), 6.7 ms avg latency, 197.0 max latency.
3023525 records sent, 602295.8 records/sec (2.87 MB/sec), 6.5 ms avg latency, 190.0 max latency.
1899867 records sent, 375171.2 records/sec (1.79 MB/sec), 10.5 ms avg latency, 175.0 max latency.
1545366 records sent, 306924.7 records/sec (1.46 MB/sec), 6.9 ms avg latency, 200.0 max latency.
1257045 records sent, 248821.3 records/sec (1.19 MB/sec), 6.4 ms avg latency, 230.0 max latency.
2666712 records sent, 530056.1 records/sec (2.53 MB/sec), 12.5 ms avg latency, 280.0 max latency.
1256038 records sent, 249213.9 records/sec (1.19 MB/sec), 7.4 ms avg latency, 183.0 max latency.
2094380 records sent, 418876.0 records/sec (2.00 MB/sec), 5.5 ms avg latency, 177.0 max latency.
1998780 records sent, 394081.2 records/sec (1.88 MB/sec), 8.5 ms avg latency, 185.0 max latency.
1480483 records sent, 294389.1 records/sec (1.40 MB/sec), 6.2 ms avg latency, 204.0 max latency.
1331857 records sent, 260484.5 records/sec (1.24 MB/sec), 8.3 ms avg latency, 418.0 max latency.
1327306 records sent, 262313.4 records/sec (1.25 MB/sec), 6.1 ms avg latency, 173.0 max latency.
2469377 records sent, 491320.5 records/sec (2.34 MB/sec), 5.5 ms avg latency, 184.0 max latency.
2137840 records sent, 407362.8 records/sec (1.94 MB/sec), 13.9 ms avg latency, 281.0 max latency.
1927195 records sent, 385439.0 records/sec (1.84 MB/sec), 8.0 ms avg latency, 258.0 max latency.
1505339 records sent, 301067.8 records/sec (1.44 MB/sec), 6.1 ms avg latency, 165.0 max latency.
1199860 records sent, 239972.0 records/sec (1.14 MB/sec), 6.8 ms avg latency, 202.0 max latency.
1644086 records sent, 328817.2 records/sec (1.57 MB/sec), 10.1 ms avg latency, 219.0 max latency.
1690128 records sent, 337890.4 records/sec (1.61 MB/sec), 6.7 ms avg latency, 226.0 max latency.
1881470 records sent, 374496.4 records/sec (1.79 MB/sec), 6.1 ms avg latency, 234.0 max latency.
2273717 records sent, 450508.6 records/sec (2.15 MB/sec), 5.3 ms avg latency, 222.0 max latency.
1927609 records sent, 377740.3 records/sec (1.80 MB/sec), 6.1 ms avg latency, 154.0 max latency.
2059603 records sent, 411920.6 records/sec (1.96 MB/sec), 5.4 ms avg latency, 176.0 max latency.
1663762 records sent, 327190.2 records/sec (1.56 MB/sec), 5.2 ms avg latency, 188.0 max latency.
1497184 records sent, 298719.9 records/sec (1.42 MB/sec), 9.6 ms avg latency, 210.0 max latency.
1372950 records sent, 274590.0 records/sec (1.31 MB/sec), 6.7 ms avg latency, 218.0 max latency.
1570024 records sent, 314004.8 records/sec (1.50 MB/sec), 7.4 ms avg latency, 172.0 max latency.
1789503 records sent, 357900.6 records/sec (1.71 MB/sec), 5.9 ms avg latency, 174.0 max latency.
2483808 records sent, 493897.0 records/sec (2.36 MB/sec), 7.4 ms avg latency, 185.0 max latency.
2446457 records sent, 487342.0 records/sec (2.32 MB/sec), 5.9 ms avg latency, 155.0 max latency.
2633802 records sent, 526760.4 records/sec (2.51 MB/sec), 8.1 ms avg latency, 217.0 max latency.
2586119 records sent, 512001.4 records/sec (2.44 MB/sec), 12.7 ms avg latency, 354.0 max latency.
1404479 records sent, 277345.8 records/sec (1.32 MB/sec), 7.9 ms avg latency, 261.0 max latency.
1514416 records sent, 301856.9 records/sec (1.44 MB/sec), 6.5 ms avg latency, 191.0 max latency.
2040824 records sent, 408164.8 records/sec (1.95 MB/sec), 7.5 ms avg latency, 224.0 max latency.
2599811 records sent, 519962.2 records/sec (2.48 MB/sec), 8.2 ms avg latency, 215.0 max latency.
4407346 records sent, 881469.2 records/sec (4.20 MB/sec), 3.3 ms avg latency, 121.0 max latency.
2302332 records sent, 452058.1 records/sec (2.16 MB/sec), 52.4 ms avg latency, 687.0 max latency.
1478390 records sent, 295678.0 records/sec (1.41 MB/sec), 10.4 ms avg latency, 166.0 max latency.
3439554 records sent, 680560.7 records/sec (3.25 MB/sec), 4.7 ms avg latency, 148.0 max latency.
4138047 records sent, 813455.3 records/sec (3.88 MB/sec), 6.9 ms avg latency, 200.0 max latency.
2100645 records sent, 415311.4 records/sec (1.98 MB/sec), 8.2 ms avg latency, 186.0 max latency.
2959308 records sent, 588917.0 records/sec (2.81 MB/sec), 5.7 ms avg latency, 199.0 max latency.
1548824 records sent, 306758.6 records/sec (1.46 MB/sec), 11.0 ms avg latency, 202.0 max latency.
2742277 records sent, 547360.7 records/sec (2.61 MB/sec), 3.8 ms avg latency, 209.0 max latency.
1373194 records sent, 274638.8 records/sec (1.31 MB/sec), 5.0 ms avg latency, 237.0 max latency.
3551819 records sent, 710363.8 records/sec (3.39 MB/sec), 3.0 ms avg latency, 245.0 max latency.
3204881 records sent, 640591.8 records/sec (3.05 MB/sec), 2.8 ms avg latency, 184.0 max latency.
2426405 records sent, 485281.0 records/sec (2.31 MB/sec), 3.3 ms avg latency, 161.0 max latency.
3331836 records sent, 662920.0 records/sec (3.16 MB/sec), 2.8 ms avg latency, 164.0 max latency.
2295181 records sent, 459036.2 records/sec (2.19 MB/sec), 5.8 ms avg latency, 240.0 max latency.
3653279 records sent, 728325.2 records/sec (3.47 MB/sec), 5.9 ms avg latency, 186.0 max latency.
2327730 records sent, 465546.0 records/sec (2.22 MB/sec), 5.3 ms avg latency, 130.0 max latency.
3251790 records sent, 645708.9 records/sec (3.08 MB/sec), 3.2 ms avg latency, 154.0 max latency.
2971109 records sent, 587407.9 records/sec (2.80 MB/sec), 4.5 ms avg latency, 207.0 max latency.
1533649 records sent, 306545.9 records/sec (1.46 MB/sec), 29.0 ms avg latency, 1017.0 max latency.
2679145 records sent, 530418.7 records/sec (2.53 MB/sec), 4.9 ms avg latency, 185.0 max latency.
200000000 records sent, 460780.654585 records/sec (2.20 MB/sec), 7.13 ms avg latency, 1017.00 ms max latency, 1 ms 50th, 44 ms 95th, 128 ms 99th, 514 ms 99.9th.


With PX replication = 1

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

2104936 records sent, 419393.5 records/sec (2.00 MB/sec), 14.9 ms avg latency, 386.0 max latency.
4640232 records sent, 924533.2 records/sec (4.41 MB/sec), 6.7 ms avg latency, 170.0 max latency.
4256170 records sent, 851234.0 records/sec (4.06 MB/sec), 6.3 ms avg latency, 120.0 max latency.
3944970 records sent, 788994.0 records/sec (3.76 MB/sec), 7.8 ms avg latency, 245.0 max latency.
3625162 records sent, 720564.9 records/sec (3.44 MB/sec), 4.8 ms avg latency, 158.0 max latency.
2320681 records sent, 464136.2 records/sec (2.21 MB/sec), 5.6 ms avg latency, 190.0 max latency.
3045663 records sent, 608402.5 records/sec (2.90 MB/sec), 5.6 ms avg latency, 204.0 max latency.
2937367 records sent, 586417.8 records/sec (2.80 MB/sec), 6.8 ms avg latency, 214.0 max latency.
4753342 records sent, 950668.4 records/sec (4.53 MB/sec), 9.3 ms avg latency, 210.0 max latency.
5851291 records sent, 1170258.2 records/sec (5.58 MB/sec), 2.6 ms avg latency, 114.0 max latency.
5471784 records sent, 1083736.2 records/sec (5.17 MB/sec), 5.1 ms avg latency, 202.0 max latency.
4117490 records sent, 823333.3 records/sec (3.93 MB/sec), 3.2 ms avg latency, 129.0 max latency.
2306359 records sent, 449144.9 records/sec (2.14 MB/sec), 15.3 ms avg latency, 502.0 max latency.
1431547 records sent, 286309.4 records/sec (1.37 MB/sec), 8.8 ms avg latency, 238.0 max latency.
1696809 records sent, 339022.8 records/sec (1.62 MB/sec), 5.8 ms avg latency, 251.0 max latency.
2710171 records sent, 539874.7 records/sec (2.57 MB/sec), 3.9 ms avg latency, 133.0 max latency.
1617572 records sent, 315131.9 records/sec (1.50 MB/sec), 5.9 ms avg latency, 194.0 max latency.
2376813 records sent, 475362.6 records/sec (2.27 MB/sec), 5.6 ms avg latency, 190.0 max latency.
1883254 records sent, 366391.8 records/sec (1.75 MB/sec), 5.6 ms avg latency, 202.0 max latency.
1740270 records sent, 347428.6 records/sec (1.66 MB/sec), 7.8 ms avg latency, 273.0 max latency.
2540228 records sent, 500438.9 records/sec (2.39 MB/sec), 5.4 ms avg latency, 288.0 max latency.
2423151 records sent, 484630.2 records/sec (2.31 MB/sec), 6.1 ms avg latency, 235.0 max latency.
1385786 records sent, 273762.5 records/sec (1.31 MB/sec), 7.4 ms avg latency, 216.0 max latency.
3763602 records sent, 751818.2 records/sec (3.58 MB/sec), 4.0 ms avg latency, 140.0 max latency.
2883972 records sent, 576563.8 records/sec (2.75 MB/sec), 5.6 ms avg latency, 180.0 max latency.
1514528 records sent, 301158.9 records/sec (1.44 MB/sec), 10.9 ms avg latency, 236.0 max latency.
1311612 records sent, 262322.4 records/sec (1.25 MB/sec), 7.5 ms avg latency, 260.0 max latency.
2665038 records sent, 531307.4 records/sec (2.53 MB/sec), 5.1 ms avg latency, 247.0 max latency.
1340362 records sent, 267644.2 records/sec (1.28 MB/sec), 5.6 ms avg latency, 238.0 max latency.
1779337 records sent, 355796.2 records/sec (1.70 MB/sec), 4.4 ms avg latency, 210.0 max latency.
2913033 records sent, 582606.6 records/sec (2.78 MB/sec), 3.8 ms avg latency, 226.0 max latency.
2392892 records sent, 478578.4 records/sec (2.28 MB/sec), 6.5 ms avg latency, 190.0 max latency.
2875782 records sent, 575156.4 records/sec (2.74 MB/sec), 5.4 ms avg latency, 185.0 max latency.
1409482 records sent, 281614.8 records/sec (1.34 MB/sec), 5.4 ms avg latency, 194.0 max latency.
2036790 records sent, 404767.5 records/sec (1.93 MB/sec), 5.5 ms avg latency, 219.0 max latency.
3294432 records sent, 657177.7 records/sec (3.13 MB/sec), 9.2 ms avg latency, 273.0 max latency.
1872000 records sent, 373578.1 records/sec (1.78 MB/sec), 4.5 ms avg latency, 184.0 max latency.
3582220 records sent, 713589.6 records/sec (3.40 MB/sec), 4.2 ms avg latency, 145.0 max latency.
3471094 records sent, 694218.8 records/sec (3.31 MB/sec), 4.6 ms avg latency, 185.0 max latency.
4183382 records sent, 834673.2 records/sec (3.98 MB/sec), 4.6 ms avg latency, 190.0 max latency.
2266049 records sent, 452576.2 records/sec (2.16 MB/sec), 6.1 ms avg latency, 166.0 max latency.
3153481 records sent, 629814.5 records/sec (3.00 MB/sec), 7.5 ms avg latency, 199.0 max latency.
1790175 records sent, 358035.0 records/sec (1.71 MB/sec), 6.4 ms avg latency, 262.0 max latency.
3302222 records sent, 660444.4 records/sec (3.15 MB/sec), 4.4 ms avg latency, 150.0 max latency.
3226337 records sent, 645138.4 records/sec (3.08 MB/sec), 7.5 ms avg latency, 282.0 max latency.
2450744 records sent, 485488.1 records/sec (2.31 MB/sec), 11.3 ms avg latency, 324.0 max latency.
3461959 records sent, 686624.2 records/sec (3.27 MB/sec), 5.2 ms avg latency, 180.0 max latency.
2336437 records sent, 467287.4 records/sec (2.23 MB/sec), 5.1 ms avg latency, 189.0 max latency.
2742784 records sent, 542373.7 records/sec (2.59 MB/sec), 5.8 ms avg latency, 203.0 max latency.
3340957 records sent, 666591.6 records/sec (3.18 MB/sec), 6.0 ms avg latency, 240.0 max latency.
1670997 records sent, 334199.4 records/sec (1.59 MB/sec), 5.0 ms avg latency, 167.0 max latency.
3989924 records sent, 797984.8 records/sec (3.81 MB/sec), 4.9 ms avg latency, 199.0 max latency.
2888808 records sent, 577069.1 records/sec (2.75 MB/sec), 5.2 ms avg latency, 239.0 max latency.
2162274 records sent, 431936.5 records/sec (2.06 MB/sec), 5.3 ms avg latency, 192.0 max latency.
3030053 records sent, 605042.5 records/sec (2.89 MB/sec), 3.5 ms avg latency, 205.0 max latency.
1818750 records sent, 363750.0 records/sec (1.73 MB/sec), 4.8 ms avg latency, 220.0 max latency.
3414469 records sent, 676936.8 records/sec (3.23 MB/sec), 6.1 ms avg latency, 208.0 max latency.
2769306 records sent, 553861.2 records/sec (2.64 MB/sec), 4.6 ms avg latency, 233.0 max latency.
1968970 records sent, 393715.3 records/sec (1.88 MB/sec), 5.6 ms avg latency, 149.0 max latency.
3087012 records sent, 615065.2 records/sec (2.93 MB/sec), 4.9 ms avg latency, 166.0 max latency.
1981467 records sent, 396293.4 records/sec (1.89 MB/sec), 4.5 ms avg latency, 201.0 max latency.
2235572 records sent, 447114.4 records/sec (2.13 MB/sec), 4.6 ms avg latency, 167.0 max latency.
1991505 records sent, 396082.9 records/sec (1.89 MB/sec), 4.8 ms avg latency, 186.0 max latency.
3298894 records sent, 642808.7 records/sec (3.07 MB/sec), 6.5 ms avg latency, 213.0 max latency.
3035479 records sent, 605280.0 records/sec (2.89 MB/sec), 3.6 ms avg latency, 245.0 max latency.
4861469 records sent, 960005.7 records/sec (4.58 MB/sec), 1.7 ms avg latency, 185.0 max latency.
1914662 records sent, 380951.5 records/sec (1.82 MB/sec), 4.0 ms avg latency, 164.0 max latency.
3031547 records sent, 606309.4 records/sec (2.89 MB/sec), 3.8 ms avg latency, 256.0 max latency.
4161070 records sent, 826921.7 records/sec (3.94 MB/sec), 3.0 ms avg latency, 152.0 max latency.
3567936 records sent, 691594.5 records/sec (3.30 MB/sec), 5.4 ms avg latency, 190.0 max latency.
200000000 records sent, 561398.781203 records/sec (2.68 MB/sec), 5.72 ms avg latency, 502.00 ms max latency, 1 ms 50th, 34 ms 95th, 113 ms 99th, 223 ms 99.9th


With PX Replication = 1 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 200000000 --record-size 5 --t
hroughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.
cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.ka
fka.svc.cluster.local:9092 batch.size=8196
1804147 records sent, 360829.4 records/sec (1.72 MB/sec), 15.0 ms avg latency, 368.0 max latency.
3942235 records sent, 788447.0 records/sec (3.76 MB/sec), 9.9 ms avg latency, 370.0 max latency.
1943954 records sent, 388169.7 records/sec (1.85 MB/sec), 7.2 ms avg latency, 206.0 max latency.
1415519 records sent, 283103.8 records/sec (1.35 MB/sec), 12.5 ms avg latency, 330.0 max latency.
1646391 records sent, 326989.3 records/sec (1.56 MB/sec), 7.7 ms avg latency, 176.0 max latency.
2811118 records sent, 555556.9 records/sec (2.65 MB/sec), 6.1 ms avg latency, 231.0 max latency.
1532318 records sent, 303669.8 records/sec (1.45 MB/sec), 7.8 ms avg latency, 226.0 max latency.
1356133 records sent, 268860.6 records/sec (1.28 MB/sec), 7.0 ms avg latency, 180.0 max latency.
1261666 records sent, 252333.2 records/sec (1.20 MB/sec), 8.0 ms avg latency, 197.0 max latency.
2011016 records sent, 401640.9 records/sec (1.92 MB/sec), 11.7 ms avg latency, 230.0 max latency.
1921615 records sent, 384323.0 records/sec (1.83 MB/sec), 6.8 ms avg latency, 178.0 max latency.
2389182 records sent, 469756.6 records/sec (2.24 MB/sec), 5.2 ms avg latency, 171.0 max latency.
2352059 records sent, 470411.8 records/sec (2.24 MB/sec), 6.6 ms avg latency, 238.0 max latency.
3059576 records sent, 608023.8 records/sec (2.90 MB/sec), 6.0 ms avg latency, 166.0 max latency.
1467652 records sent, 290624.2 records/sec (1.39 MB/sec), 6.5 ms avg latency, 178.0 max latency.
2048146 records sent, 409629.2 records/sec (1.95 MB/sec), 5.4 ms avg latency, 144.0 max latency.
2582983 records sent, 515462.6 records/sec (2.46 MB/sec), 8.1 ms avg latency, 189.0 max latency.
2540721 records sent, 497692.7 records/sec (2.37 MB/sec), 5.2 ms avg latency, 163.0 max latency.
4226541 records sent, 836607.5 records/sec (3.99 MB/sec), 4.9 ms avg latency, 190.0 max latency.
2627953 records sent, 525590.6 records/sec (2.51 MB/sec), 16.3 ms avg latency, 229.0 max latency.
2420547 records sent, 484109.4 records/sec (2.31 MB/sec), 7.1 ms avg latency, 207.0 max latency.
2026167 records sent, 404586.1 records/sec (1.93 MB/sec), 8.5 ms avg latency, 246.0 max latency.
2957073 records sent, 588355.2 records/sec (2.81 MB/sec), 4.8 ms avg latency, 176.0 max latency.
2163122 records sent, 432624.4 records/sec (2.06 MB/sec), 4.4 ms avg latency, 181.0 max latency.
1908264 records sent, 380815.0 records/sec (1.82 MB/sec), 6.0 ms avg latency, 231.0 max latency.
3939369 records sent, 774551.5 records/sec (3.69 MB/sec), 4.0 ms avg latency, 205.0 max latency.
3820387 records sent, 751305.2 records/sec (3.58 MB/sec), 5.6 ms avg latency, 214.0 max latency.
1370180 records sent, 273270.8 records/sec (1.30 MB/sec), 6.3 ms avg latency, 221.0 max latency.
2056301 records sent, 411260.2 records/sec (1.96 MB/sec), 4.1 ms avg latency, 208.0 max latency.
1582731 records sent, 316546.2 records/sec (1.51 MB/sec), 8.0 ms avg latency, 222.0 max latency.
1547365 records sent, 305803.4 records/sec (1.46 MB/sec), 7.1 ms avg latency, 153.0 max latency.
2228031 records sent, 444273.4 records/sec (2.12 MB/sec), 4.5 ms avg latency, 220.0 max latency.
2954392 records sent, 587004.2 records/sec (2.80 MB/sec), 5.3 ms avg latency, 165.0 max latency.
2223233 records sent, 443228.3 records/sec (2.11 MB/sec), 6.0 ms avg latency, 236.0 max latency.
1489439 records sent, 297233.9 records/sec (1.42 MB/sec), 6.6 ms avg latency, 185.0 max latency.
1387049 records sent, 275426.7 records/sec (1.31 MB/sec), 7.1 ms avg latency, 208.0 max latency.
2194509 records sent, 438901.8 records/sec (2.09 MB/sec), 8.1 ms avg latency, 207.0 max latency.
3474192 records sent, 694838.4 records/sec (3.31 MB/sec), 5.9 ms avg latency, 167.0 max latency.
2486213 records sent, 494670.3 records/sec (2.36 MB/sec), 4.0 ms avg latency, 224.0 max latency.
2044283 records sent, 408529.8 records/sec (1.95 MB/sec), 8.5 ms avg latency, 231.0 max latency.
1508392 records sent, 300476.5 records/sec (1.43 MB/sec), 6.5 ms avg latency, 184.0 max latency.
2099978 records sent, 419995.6 records/sec (2.00 MB/sec), 5.7 ms avg latency, 180.0 max latency.
1704185 records sent, 339614.4 records/sec (1.62 MB/sec), 6.8 ms avg latency, 215.0 max latency.
1682863 records sent, 333835.2 records/sec (1.59 MB/sec), 6.4 ms avg latency, 193.0 max latency.
2965850 records sent, 593170.0 records/sec (2.83 MB/sec), 8.5 ms avg latency, 209.0 max latency.
3630896 records sent, 714040.5 records/sec (3.40 MB/sec), 11.7 ms avg latency, 360.0 max latency.
2766193 records sent, 549283.8 records/sec (2.62 MB/sec), 7.2 ms avg latency, 211.0 max latency.
2811771 records sent, 562017.0 records/sec (2.68 MB/sec), 7.6 ms avg latency, 243.0 max latency.
1929184 records sent, 383535.6 records/sec (1.83 MB/sec), 7.2 ms avg latency, 173.0 max latency.
3626384 records sent, 699939.0 records/sec (3.34 MB/sec), 9.3 ms avg latency, 526.0 max latency.
1916955 records sent, 383391.0 records/sec (1.83 MB/sec), 5.8 ms avg latency, 246.0 max latency.
1568265 records sent, 313653.0 records/sec (1.50 MB/sec), 9.8 ms avg latency, 315.0 max latency.
2606391 records sent, 520861.5 records/sec (2.48 MB/sec), 6.1 ms avg latency, 186.0 max latency.
1918011 records sent, 382989.4 records/sec (1.83 MB/sec), 5.1 ms avg latency, 168.0 max latency.
1934883 records sent, 385819.1 records/sec (1.84 MB/sec), 5.8 ms avg latency, 204.0 max latency.
3605136 records sent, 714879.2 records/sec (3.41 MB/sec), 4.8 ms avg latency, 162.0 max latency.
2585972 records sent, 517194.4 records/sec (2.47 MB/sec), 7.3 ms avg latency, 321.0 max latency.
3038151 records sent, 607630.2 records/sec (2.90 MB/sec), 4.5 ms avg latency, 219.0 max latency.
3490107 records sent, 698021.4 records/sec (3.33 MB/sec), 5.1 ms avg latency, 175.0 max latency.
1968533 records sent, 391669.9 records/sec (1.87 MB/sec), 7.9 ms avg latency, 245.0 max latency.
1467949 records sent, 290683.0 records/sec (1.39 MB/sec), 14.1 ms avg latency, 304.0 max latency.
2196020 records sent, 439204.0 records/sec (2.09 MB/sec), 6.3 ms avg latency, 212.0 max latency.
1272229 records sent, 253684.7 records/sec (1.21 MB/sec), 6.0 ms avg latency, 226.0 max latency.
3014185 records sent, 598290.0 records/sec (2.85 MB/sec), 12.1 ms avg latency, 258.0 max latency.
2083462 records sent, 416692.4 records/sec (1.99 MB/sec), 5.1 ms avg latency, 185.0 max latency.
1897699 records sent, 379539.8 records/sec (1.81 MB/sec), 6.0 ms avg latency, 171.0 max latency.
2284785 records sent, 453510.3 records/sec (2.16 MB/sec), 6.9 ms avg latency, 285.0 max latency.
1752780 records sent, 350556.0 records/sec (1.67 MB/sec), 5.6 ms avg latency, 186.0 max latency.
1629115 records sent, 325692.7 records/sec (1.55 MB/sec), 7.7 ms avg latency, 257.0 max latency.
2201667 records sent, 433740.5 records/sec (2.07 MB/sec), 4.3 ms avg latency, 198.0 max latency.
1319012 records sent, 260828.9 records/sec (1.24 MB/sec), 9.2 ms avg latency, 259.0 max latency.
2299310 records sent, 448558.3 records/sec (2.14 MB/sec), 5.2 ms avg latency, 172.0 max latency.
1449425 records sent, 283922.6 records/sec (1.35 MB/sec), 8.4 ms avg latency, 244.0 max latency.
1543408 records sent, 308681.6 records/sec (1.47 MB/sec), 7.7 ms avg latency, 177.0 max latency.
2648355 records sent, 526931.0 records/sec (2.51 MB/sec), 5.6 ms avg latency, 160.0 max latency.
2007357 records sent, 401070.3 records/sec (1.91 MB/sec), 7.9 ms avg latency, 231.0 max latency.
3112042 records sent, 616612.2 records/sec (2.94 MB/sec), 9.5 ms avg latency, 270.0 max latency.
4094276 records sent, 813809.6 records/sec (3.88 MB/sec), 7.3 ms avg latency, 181.0 max latency.
3344859 records sent, 665908.6 records/sec (3.18 MB/sec), 12.3 ms avg latency, 258.0 max latency.
1949935 records sent, 387584.0 records/sec (1.85 MB/sec), 6.5 ms avg latency, 167.0 max latency.
2330441 records sent, 466088.2 records/sec (2.22 MB/sec), 4.6 ms avg latency, 205.0 max latency.
1383320 records sent, 272951.9 records/sec (1.30 MB/sec), 7.7 ms avg latency, 219.0 max latency.
2346031 records sent, 467336.9 records/sec (2.23 MB/sec), 14.4 ms avg latency, 261.0 max latency.
2010293 records sent, 402058.6 records/sec (1.92 MB/sec), 5.6 ms avg latency, 246.0 max latency.
1672300 records sent, 332135.1 records/sec (1.58 MB/sec), 4.8 ms avg latency, 156.0 max latency.
2494451 records sent, 494734.4 records/sec (2.36 MB/sec), 8.7 ms avg latency, 220.0 max latency.
1788592 records sent, 357147.0 records/sec (1.70 MB/sec), 7.3 ms avg latency, 236.0 max latency.
200000000 records sent, 452283.011572 records/sec (2.16 MB/sec), 7.19 ms avg latency, 526.00 ms max latency, 1 ms 50th, 48 ms 95th, 135 ms 99th, 248 ms 99.9th.

Without PX

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5447940 records sent, 1089588.0 records/sec (5.20 MB/sec), 2.2 ms avg latency, 265.0 max latency.
6653416 records sent, 1330683.2 records/sec (6.35 MB/sec), 1.2 ms avg latency, 31.0 max latency.
6563223 records sent, 1312644.6 records/sec (6.26 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6497012 records sent, 1299402.4 records/sec (6.20 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6425005 records sent, 1285001.0 records/sec (6.13 MB/sec), 1.0 ms avg latency, 30.0 max latency.
6589255 records sent, 1317851.0 records/sec (6.28 MB/sec), 1.0 ms avg latency, 26.0 max latency.
6655792 records sent, 1331158.4 records/sec (6.35 MB/sec), 0.9 ms avg latency, 26.0 max latency.
6427277 records sent, 1285455.4 records/sec (6.13 MB/sec), 1.3 ms avg latency, 85.0 max latency.
6328425 records sent, 1265685.0 records/sec (6.04 MB/sec), 1.0 ms avg latency, 32.0 max latency.
6636299 records sent, 1327259.8 records/sec (6.33 MB/sec), 1.0 ms avg latency, 24.0 max latency.
6556785 records sent, 1311357.0 records/sec (6.25 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6920392 records sent, 1384078.4 records/sec (6.60 MB/sec), 1.0 ms avg latency, 34.0 max latency.
6513628 records sent, 1302725.6 records/sec (6.21 MB/sec), 1.3 ms avg latency, 110.0 max latency.
6589936 records sent, 1317987.2 records/sec (6.28 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6715332 records sent, 1343066.4 records/sec (6.40 MB/sec), 0.9 ms avg latency, 31.0 max latency.
6540024 records sent, 1308004.8 records/sec (6.24 MB/sec), 0.9 ms avg latency, 19.0 max latency.
6902663 records sent, 1380532.6 records/sec (6.58 MB/sec), 0.9 ms avg latency, 22.0 max latency.
6540690 records sent, 1308138.0 records/sec (6.24 MB/sec), 1.8 ms avg latency, 159.0 max latency.
6401253 records sent, 1280250.6 records/sec (6.10 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6857589 records sent, 1371517.8 records/sec (6.54 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6735348 records sent, 1347069.6 records/sec (6.42 MB/sec), 0.8 ms avg latency, 21.0 max latency.
6563528 records sent, 1312705.6 records/sec (6.26 MB/sec), 1.1 ms avg latency, 82.0 max latency.
6310762 records sent, 1262152.4 records/sec (6.02 MB/sec), 0.9 ms avg latency, 26.0 max latency.
6509403 records sent, 1301880.6 records/sec (6.21 MB/sec), 1.5 ms avg latency, 121.0 max latency.
6183424 records sent, 1236684.8 records/sec (5.90 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6159802 records sent, 1231960.4 records/sec (5.87 MB/sec), 0.9 ms avg latency, 22.0 max latency.
6264054 records sent, 1252810.8 records/sec (5.97 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6178421 records sent, 1235684.2 records/sec (5.89 MB/sec), 0.8 ms avg latency, 26.0 max latency.
6381081 records sent, 1276216.2 records/sec (6.09 MB/sec), 0.9 ms avg latency, 23.0 max latency.
6500185 records sent, 1300037.0 records/sec (6.20 MB/sec), 0.8 ms avg latency, 29.0 max latency.
200000000 records sent, 1297597.498232 records/sec (6.19 MB/sec), 1.03 ms avg latency, 265.00 ms max latency, 1 ms 50th, 2 ms 95th, 7 ms 99th, 35 ms 99.9th.
```


## 500 mil (5KB Payload)
```
With PX Replication = 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1301207 records sent, 258637.8 records/sec (1.23 MB/sec), 13.5 ms avg latency, 280.0 max latency.
3101257 records sent, 620251.4 records/sec (2.96 MB/sec), 6.0 ms avg latency, 179.0 max latency.
4348365 records sent, 869673.0 records/sec (4.15 MB/sec), 4.6 ms avg latency, 138.0 max latency.
4348332 records sent, 869666.4 records/sec (4.15 MB/sec), 9.5 ms avg latency, 234.0 max latency.
1907003 records sent, 370435.7 records/sec (1.77 MB/sec), 10.8 ms avg latency, 215.0 max latency.
2777884 records sent, 548988.9 records/sec (2.62 MB/sec), 6.1 ms avg latency, 196.0 max latency.
1508020 records sent, 301604.0 records/sec (1.44 MB/sec), 8.8 ms avg latency, 174.0 max latency.
2547947 records sent, 509589.4 records/sec (2.43 MB/sec), 6.1 ms avg latency, 172.0 max latency.
1885152 records sent, 375678.0 records/sec (1.79 MB/sec), 5.5 ms avg latency, 183.0 max latency.
1308166 records sent, 260538.9 records/sec (1.24 MB/sec), 5.9 ms avg latency, 194.0 max latency.
1313141 records sent, 261999.4 records/sec (1.25 MB/sec), 7.9 ms avg latency, 206.0 max latency.
2297535 records sent, 453252.1 records/sec (2.16 MB/sec), 5.2 ms avg latency, 173.0 max latency.
2134630 records sent, 419130.2 records/sec (2.00 MB/sec), 6.2 ms avg latency, 181.0 max latency.
1412179 records sent, 279916.6 records/sec (1.33 MB/sec), 8.2 ms avg latency, 168.0 max latency.
3461171 records sent, 690576.8 records/sec (3.29 MB/sec), 12.8 ms avg latency, 251.0 max latency.
1291995 records sent, 258399.0 records/sec (1.23 MB/sec), 7.9 ms avg latency, 203.0 max latency.
1265295 records sent, 252654.8 records/sec (1.20 MB/sec), 11.3 ms avg latency, 221.0 max latency.
1812325 records sent, 358947.3 records/sec (1.71 MB/sec), 5.5 ms avg latency, 195.0 max latency.
2395459 records sent, 479091.8 records/sec (2.28 MB/sec), 6.4 ms avg latency, 233.0 max latency.
3389662 records sent, 668836.2 records/sec (3.19 MB/sec), 16.2 ms avg latency, 265.0 max latency.
1573268 records sent, 312528.4 records/sec (1.49 MB/sec), 7.1 ms avg latency, 242.0 max latency.
2877132 records sent, 575426.4 records/sec (2.74 MB/sec), 5.7 ms avg latency, 167.0 max latency.
2821673 records sent, 563208.2 records/sec (2.69 MB/sec), 10.3 ms avg latency, 411.0 max latency.
2657591 records sent, 531518.2 records/sec (2.53 MB/sec), 6.3 ms avg latency, 208.0 max latency.
2867355 records sent, 573471.0 records/sec (2.73 MB/sec), 7.9 ms avg latency, 173.0 max latency.
2621007 records sent, 523468.5 records/sec (2.50 MB/sec), 10.8 ms avg latency, 423.0 max latency.
3158500 records sent, 626686.5 records/sec (2.99 MB/sec), 4.7 ms avg latency, 182.0 max latency.
3444010 records sent, 676622.8 records/sec (3.23 MB/sec), 3.9 ms avg latency, 135.0 max latency.
2001896 records sent, 396886.6 records/sec (1.89 MB/sec), 14.9 ms avg latency, 623.0 max latency.
2804531 records sent, 560906.2 records/sec (2.67 MB/sec), 4.3 ms avg latency, 207.0 max latency.
2702119 records sent, 540423.8 records/sec (2.58 MB/sec), 4.4 ms avg latency, 198.0 max latency.
2031950 records sent, 406390.0 records/sec (1.94 MB/sec), 16.3 ms avg latency, 528.0 max latency.
3257418 records sent, 651483.6 records/sec (3.11 MB/sec), 6.9 ms avg latency, 271.0 max latency.
1350365 records sent, 269695.4 records/sec (1.29 MB/sec), 7.9 ms avg latency, 180.0 max latency.
1680211 records sent, 335438.4 records/sec (1.60 MB/sec), 24.9 ms avg latency, 599.0 max latency.
1244966 records sent, 247311.5 records/sec (1.18 MB/sec), 6.7 ms avg latency, 165.0 max latency.
1863167 records sent, 372633.4 records/sec (1.78 MB/sec), 6.5 ms avg latency, 207.0 max latency.
1483531 records sent, 296706.2 records/sec (1.41 MB/sec), 6.5 ms avg latency, 228.0 max latency.
1703763 records sent, 340752.6 records/sec (1.62 MB/sec), 5.3 ms avg latency, 175.0 max latency.
2235678 records sent, 447135.6 records/sec (2.13 MB/sec), 5.7 ms avg latency, 163.0 max latency.
1330573 records sent, 262595.8 records/sec (1.25 MB/sec), 9.1 ms avg latency, 283.0 max latency.
2014499 records sent, 402899.8 records/sec (1.92 MB/sec), 7.9 ms avg latency, 191.0 max latency.
2575821 records sent, 511177.0 records/sec (2.44 MB/sec), 4.3 ms avg latency, 150.0 max latency.
2571953 records sent, 504205.6 records/sec (2.40 MB/sec), 4.8 ms avg latency, 213.0 max latency.
1543762 records sent, 308752.4 records/sec (1.47 MB/sec), 5.4 ms avg latency, 215.0 max latency.
2080110 records sent, 414860.4 records/sec (1.98 MB/sec), 4.8 ms avg latency, 174.0 max latency.
2704038 records sent, 540807.6 records/sec (2.58 MB/sec), 4.5 ms avg latency, 223.0 max latency.
1668772 records sent, 333021.8 records/sec (1.59 MB/sec), 5.0 ms avg latency, 223.0 max latency.
2269376 records sent, 447873.7 records/sec (2.14 MB/sec), 5.0 ms avg latency, 177.0 max latency.
1697163 records sent, 333693.1 records/sec (1.59 MB/sec), 6.4 ms avg latency, 163.0 max latency.
2846152 records sent, 566511.1 records/sec (2.70 MB/sec), 3.6 ms avg latency, 193.0 max latency.
1997083 records sent, 388991.6 records/sec (1.85 MB/sec), 7.1 ms avg latency, 266.0 max latency.
1477868 records sent, 295573.6 records/sec (1.41 MB/sec), 6.9 ms avg latency, 149.0 max latency.
2121560 records sent, 424312.0 records/sec (2.02 MB/sec), 7.5 ms avg latency, 200.0 max latency.
2520299 records sent, 504059.8 records/sec (2.40 MB/sec), 5.7 ms avg latency, 168.0 max latency.
2989668 records sent, 597933.6 records/sec (2.85 MB/sec), 4.5 ms avg latency, 148.0 max latency.
2515123 records sent, 503024.6 records/sec (2.40 MB/sec), 6.3 ms avg latency, 298.0 max latency.
2937240 records sent, 582208.1 records/sec (2.78 MB/sec), 6.2 ms avg latency, 224.0 max latency.
2336296 records sent, 466233.5 records/sec (2.22 MB/sec), 10.7 ms avg latency, 213.0 max latency.
2991132 records sent, 593478.6 records/sec (2.83 MB/sec), 6.0 ms avg latency, 188.0 max latency.
1867562 records sent, 372098.4 records/sec (1.77 MB/sec), 6.7 ms avg latency, 271.0 max latency.
1419169 records sent, 283833.8 records/sec (1.35 MB/sec), 7.0 ms avg latency, 217.0 max latency.
2473210 records sent, 494642.0 records/sec (2.36 MB/sec), 7.4 ms avg latency, 151.0 max latency.
2000446 records sent, 396913.9 records/sec (1.89 MB/sec), 3.9 ms avg latency, 205.0 max latency.
1189854 records sent, 237353.7 records/sec (1.13 MB/sec), 8.4 ms avg latency, 230.0 max latency.
2249912 records sent, 449982.4 records/sec (2.15 MB/sec), 4.9 ms avg latency, 188.0 max latency.
4391802 records sent, 871908.3 records/sec (4.16 MB/sec), 5.4 ms avg latency, 187.0 max latency.
3091123 records sent, 618224.6 records/sec (2.95 MB/sec), 4.7 ms avg latency, 190.0 max latency.
2168141 records sent, 433628.2 records/sec (2.07 MB/sec), 3.6 ms avg latency, 208.0 max latency.
3407455 records sent, 674877.2 records/sec (3.22 MB/sec), 3.8 ms avg latency, 126.0 max latency.
2746337 records sent, 549267.4 records/sec (2.62 MB/sec), 16.8 ms avg latency, 320.0 max latency.
5295712 records sent, 1059142.4 records/sec (5.05 MB/sec), 3.1 ms avg latency, 123.0 max latency.
4541670 records sent, 907607.9 records/sec (4.33 MB/sec), 7.4 ms avg latency, 215.0 max latency.
2284907 records sent, 447845.4 records/sec (2.14 MB/sec), 10.5 ms avg latency, 279.0 max latency.
3402315 records sent, 676270.1 records/sec (3.22 MB/sec), 6.8 ms avg latency, 236.0 max latency.
2473812 records sent, 486970.9 records/sec (2.32 MB/sec), 6.3 ms avg latency, 210.0 max latency.
3632591 records sent, 725357.6 records/sec (3.46 MB/sec), 4.3 ms avg latency, 221.0 max latency.
2409696 records sent, 481169.3 records/sec (2.29 MB/sec), 12.6 ms avg latency, 323.0 max latency.
2044656 records sent, 408931.2 records/sec (1.95 MB/sec), 6.0 ms avg latency, 179.0 max latency.
2295560 records sent, 458012.8 records/sec (2.18 MB/sec), 4.5 ms avg latency, 236.0 max latency.
2577628 records sent, 515525.6 records/sec (2.46 MB/sec), 4.6 ms avg latency, 201.0 max latency.
1883446 records sent, 374666.0 records/sec (1.79 MB/sec), 5.0 ms avg latency, 220.0 max latency.
2240684 records sent, 444051.5 records/sec (2.12 MB/sec), 4.4 ms avg latency, 167.0 max latency.
2455487 records sent, 491097.4 records/sec (2.34 MB/sec), 9.1 ms avg latency, 219.0 max latency.
1989263 records sent, 396346.5 records/sec (1.89 MB/sec), 6.3 ms avg latency, 264.0 max latency.
1874192 records sent, 366984.9 records/sec (1.75 MB/sec), 5.0 ms avg latency, 163.0 max latency.
2755082 records sent, 539049.5 records/sec (2.57 MB/sec), 6.4 ms avg latency, 170.0 max latency.
3381986 records sent, 674508.6 records/sec (3.22 MB/sec), 5.8 ms avg latency, 164.0 max latency.
1392172 records sent, 277934.1 records/sec (1.33 MB/sec), 8.4 ms avg latency, 200.0 max latency.
3054335 records sent, 609161.3 records/sec (2.90 MB/sec), 6.2 ms avg latency, 208.0 max latency.
2024688 records sent, 404937.6 records/sec (1.93 MB/sec), 5.1 ms avg latency, 200.0 max latency.
2603692 records sent, 520738.4 records/sec (2.48 MB/sec), 3.7 ms avg latency, 163.0 max latency.
2596604 records sent, 518594.8 records/sec (2.47 MB/sec), 8.8 ms avg latency, 278.0 max latency.
1830515 records sent, 366103.0 records/sec (1.75 MB/sec), 5.2 ms avg latency, 203.0 max latency.
3437769 records sent, 686318.4 records/sec (3.27 MB/sec), 8.7 ms avg latency, 259.0 max latency.
2184361 records sent, 436610.2 records/sec (2.08 MB/sec), 7.0 ms avg latency, 194.0 max latency.
1688042 records sent, 333144.3 records/sec (1.59 MB/sec), 4.5 ms avg latency, 196.0 max latency.
2306017 records sent, 459823.9 records/sec (2.19 MB/sec), 5.5 ms avg latency, 247.0 max latency.
1350514 records sent, 268705.5 records/sec (1.28 MB/sec), 8.4 ms avg latency, 191.0 max latency.
1476152 records sent, 290752.8 records/sec (1.39 MB/sec), 6.1 ms avg latency, 227.0 max latency.
1508461 records sent, 299357.2 records/sec (1.43 MB/sec), 5.4 ms avg latency, 182.0 max latency.
2684556 records sent, 535412.0 records/sec (2.55 MB/sec), 6.4 ms avg latency, 212.0 max latency.
1799617 records sent, 359205.0 records/sec (1.71 MB/sec), 5.3 ms avg latency, 176.0 max latency.
1342018 records sent, 265746.1 records/sec (1.27 MB/sec), 7.0 ms avg latency, 150.0 max latency.
3323173 records sent, 654812.4 records/sec (3.12 MB/sec), 6.8 ms avg latency, 160.0 max latency.
4978098 records sent, 959355.9 records/sec (4.57 MB/sec), 3.9 ms avg latency, 211.0 max latency.
1203767 records sent, 240753.4 records/sec (1.15 MB/sec), 7.3 ms avg latency, 212.0 max latency.
3502818 records sent, 699584.2 records/sec (3.34 MB/sec), 2.3 ms avg latency, 200.0 max latency.
5356761 records sent, 1071352.2 records/sec (5.11 MB/sec), 5.1 ms avg latency, 161.0 max latency.
1762343 records sent, 344881.2 records/sec (1.64 MB/sec), 5.6 ms avg latency, 244.0 max latency.
2611200 records sent, 519435.1 records/sec (2.48 MB/sec), 7.2 ms avg latency, 192.0 max latency.
1452707 records sent, 290541.4 records/sec (1.39 MB/sec), 8.5 ms avg latency, 203.0 max latency.
2734742 records sent, 546948.4 records/sec (2.61 MB/sec), 5.3 ms avg latency, 187.0 max latency.
1811156 records sent, 359499.0 records/sec (1.71 MB/sec), 6.5 ms avg latency, 188.0 max latency.
2264820 records sent, 449279.9 records/sec (2.14 MB/sec), 8.3 ms avg latency, 197.0 max latency.
4016280 records sent, 803256.0 records/sec (3.83 MB/sec), 4.7 ms avg latency, 177.0 max latency.
1860994 records sent, 369978.9 records/sec (1.76 MB/sec), 6.4 ms avg latency, 200.0 max latency.
2789838 records sent, 557967.6 records/sec (2.66 MB/sec), 6.1 ms avg latency, 168.0 max latency.
2044546 records sent, 408256.0 records/sec (1.95 MB/sec), 5.3 ms avg latency, 209.0 max latency.
2563878 records sent, 512775.6 records/sec (2.45 MB/sec), 4.4 ms avg latency, 160.0 max latency.
3327936 records sent, 665587.2 records/sec (3.17 MB/sec), 5.6 ms avg latency, 186.0 max latency.
3996457 records sent, 799291.4 records/sec (3.81 MB/sec), 3.5 ms avg latency, 153.0 max latency.
4652917 records sent, 926875.9 records/sec (4.42 MB/sec), 3.9 ms avg latency, 151.0 max latency.
4724921 records sent, 944984.2 records/sec (4.51 MB/sec), 6.1 ms avg latency, 172.0 max latency.
5519909 records sent, 1103981.8 records/sec (5.26 MB/sec), 3.8 ms avg latency, 213.0 max latency.
4328079 records sent, 864405.6 records/sec (4.12 MB/sec), 1.8 ms avg latency, 176.0 max latency.
3785491 records sent, 757098.2 records/sec (3.61 MB/sec), 9.2 ms avg latency, 280.0 max latency.
4796003 records sent, 953290.2 records/sec (4.55 MB/sec), 1.9 ms avg latency, 202.0 max latency.
3916880 records sent, 783376.0 records/sec (3.74 MB/sec), 3.4 ms avg latency, 161.0 max latency.
2934569 records sent, 585742.3 records/sec (2.79 MB/sec), 9.9 ms avg latency, 230.0 max latency.
4086041 records sent, 817208.2 records/sec (3.90 MB/sec), 4.7 ms avg latency, 142.0 max latency.
4412000 records sent, 882400.0 records/sec (4.21 MB/sec), 3.7 ms avg latency, 133.0 max latency.
2969997 records sent, 589519.1 records/sec (2.81 MB/sec), 5.3 ms avg latency, 166.0 max latency.
3122983 records sent, 624596.6 records/sec (2.98 MB/sec), 7.9 ms avg latency, 246.0 max latency.
4234782 records sent, 846956.4 records/sec (4.04 MB/sec), 3.7 ms avg latency, 123.0 max latency.
5203821 records sent, 1040764.2 records/sec (4.96 MB/sec), 4.0 ms avg latency, 138.0 max latency.
4323860 records sent, 860812.3 records/sec (4.10 MB/sec), 5.2 ms avg latency, 185.0 max latency.
4582187 records sent, 916437.4 records/sec (4.37 MB/sec), 3.3 ms avg latency, 137.0 max latency.
4270760 records sent, 854152.0 records/sec (4.07 MB/sec), 4.8 ms avg latency, 177.0 max latency.
3619039 records sent, 723807.8 records/sec (3.45 MB/sec), 9.0 ms avg latency, 192.0 max latency.
5705548 records sent, 1140425.3 records/sec (5.44 MB/sec), 5.4 ms avg latency, 185.0 max latency.
5024612 records sent, 1004922.4 records/sec (4.79 MB/sec), 9.6 ms avg latency, 208.0 max latency.
4866384 records sent, 973276.8 records/sec (4.64 MB/sec), 3.2 ms avg latency, 205.0 max latency.
6129121 records sent, 1225824.2 records/sec (5.85 MB/sec), 3.1 ms avg latency, 113.0 max latency.
5552133 records sent, 1110426.6 records/sec (5.29 MB/sec), 9.5 ms avg latency, 148.0 max latency.
3958459 records sent, 791375.2 records/sec (3.77 MB/sec), 6.9 ms avg latency, 324.0 max latency.
4255473 records sent, 851094.6 records/sec (4.06 MB/sec), 5.7 ms avg latency, 131.0 max latency.
5811398 records sent, 1144877.5 records/sec (5.46 MB/sec), 6.0 ms avg latency, 156.0 max latency.
3883432 records sent, 776686.4 records/sec (3.70 MB/sec), 2.9 ms avg latency, 136.0 max latency.
4614149 records sent, 920253.1 records/sec (4.39 MB/sec), 4.7 ms avg latency, 260.0 max latency.
4355898 records sent, 862212.6 records/sec (4.11 MB/sec), 3.9 ms avg latency, 273.0 max latency.
5100575 records sent, 1020115.0 records/sec (4.86 MB/sec), 14.3 ms avg latency, 268.0 max latency.
4801851 records sent, 953694.3 records/sec (4.55 MB/sec), 5.9 ms avg latency, 163.0 max latency.
3006269 records sent, 600773.2 records/sec (2.86 MB/sec), 17.9 ms avg latency, 496.0 max latency.
3187186 records sent, 637437.2 records/sec (3.04 MB/sec), 5.3 ms avg latency, 176.0 max latency.
4477057 records sent, 895411.4 records/sec (4.27 MB/sec), 4.5 ms avg latency, 142.0 max latency.
3742980 records sent, 748596.0 records/sec (3.57 MB/sec), 5.7 ms avg latency, 210.0 max latency.
2304774 records sent, 460954.8 records/sec (2.20 MB/sec), 52.2 ms avg latency, 893.0 max latency.
5470443 records sent, 1091251.3 records/sec (5.20 MB/sec), 6.2 ms avg latency, 178.0 max latency.
3210909 records sent, 642181.8 records/sec (3.06 MB/sec), 13.9 ms avg latency, 667.0 max latency.
3985525 records sent, 795355.2 records/sec (3.79 MB/sec), 31.1 ms avg latency, 757.0 max latency.
4282129 records sent, 854887.0 records/sec (4.08 MB/sec), 4.1 ms avg latency, 176.0 max latency.
2790928 records sent, 558185.6 records/sec (2.66 MB/sec), 5.2 ms avg latency, 184.0 max latency.
4165680 records sent, 829486.3 records/sec (3.96 MB/sec), 30.8 ms avg latency, 711.0 max latency.
1409081 records sent, 281816.2 records/sec (1.34 MB/sec), 8.6 ms avg latency, 238.0 max latency.
5433803 records sent, 1086760.6 records/sec (5.18 MB/sec), 6.4 ms avg latency, 200.0 max latency.
4380308 records sent, 876061.6 records/sec (4.18 MB/sec), 19.0 ms avg latency, 669.0 max latency.
4477236 records sent, 891524.5 records/sec (4.25 MB/sec), 5.1 ms avg latency, 162.0 max latency.
5824847 records sent, 1164969.4 records/sec (5.56 MB/sec), 6.9 ms avg latency, 162.0 max latency.
500000000 records sent, 587933.718704 records/sec (2.80 MB/sec), 7.07 ms avg latency, 893.00 ms max latency, 1 ms 50th, 42 ms 95th, 128 ms 99th, 452 ms 99.9th.

bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 --topic kbrep1-topic-px --time -1
kbrep1-topic-px:2:166666667
kbrep1-topic-px:1:166666668
kbrep1-topic-px:0:166666667

With PX replication = 1

bin/kafka-run-class.sh org.apache.kafka.tools.Produce
rPerformance --topic kbrep1-topic-px --num-records 500000000 --record-size 5 --t
hroughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.
cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.ka
fka.svc.cluster.local:9092 batch.size=8196

2413670 records sent, 482734.0 records/sec (2.30 MB/sec), 11.4 ms avg latency, 386.0 max latency.
2213161 records sent, 442632.2 records/sec (2.11 MB/sec), 6.8 ms avg latency, 222.0 max latency.
1253727 records sent, 245060.0 records/sec (1.17 MB/sec), 7.3 ms avg latency, 207.0 max latency.
2417507 records sent, 483114.9 records/sec (2.30 MB/sec), 14.9 ms avg latency, 307.0 max latency.
3785018 records sent, 753237.4 records/sec (3.59 MB/sec), 8.3 ms avg latency, 265.0 max latency.
3851934 records sent, 769156.2 records/sec (3.67 MB/sec), 6.9 ms avg latency, 201.0 max latency.
3774320 records sent, 754864.0 records/sec (3.60 MB/sec), 14.6 ms avg latency, 616.0 max latency.
3684401 records sent, 736880.2 records/sec (3.51 MB/sec), 6.4 ms avg latency, 223.0 max latency.
5854315 records sent, 1170863.0 records/sec (5.58 MB/sec), 5.9 ms avg latency, 245.0 max latency.
3392682 records sent, 675967.7 records/sec (3.22 MB/sec), 5.5 ms avg latency, 179.0 max latency.
5179527 records sent, 1035905.4 records/sec (4.94 MB/sec), 5.4 ms avg latency, 238.0 max latency.
6472416 records sent, 1294483.2 records/sec (6.17 MB/sec), 5.7 ms avg latency, 213.0 max latency.
2468112 records sent, 493030.8 records/sec (2.35 MB/sec), 5.7 ms avg latency, 171.0 max latency.
2899334 records sent, 577671.6 records/sec (2.75 MB/sec), 5.8 ms avg latency, 175.0 max latency.
4594622 records sent, 918924.4 records/sec (4.38 MB/sec), 6.5 ms avg latency, 179.0 max latency.
4283050 records sent, 843120.1 records/sec (4.02 MB/sec), 7.1 ms avg latency, 179.0 max latency.
1248291 records sent, 248465.6 records/sec (1.18 MB/sec), 6.7 ms avg latency, 209.0 max latency.
2470113 records sent, 487490.2 records/sec (2.32 MB/sec), 6.6 ms avg latency, 217.0 max latency.
2650644 records sent, 528543.2 records/sec (2.52 MB/sec), 3.9 ms avg latency, 204.0 max latency.
2854314 records sent, 566669.4 records/sec (2.70 MB/sec), 4.8 ms avg latency, 218.0 max latency.
1563610 records sent, 312597.0 records/sec (1.49 MB/sec), 5.5 ms avg latency, 211.0 max latency.
1990365 records sent, 394366.0 records/sec (1.88 MB/sec), 9.2 ms avg latency, 210.0 max latency.
2043940 records sent, 402826.2 records/sec (1.92 MB/sec), 7.9 ms avg latency, 220.0 max latency.
1421490 records sent, 283278.2 records/sec (1.35 MB/sec), 7.3 ms avg latency, 159.0 max latency.
3169652 records sent, 632665.1 records/sec (3.02 MB/sec), 4.7 ms avg latency, 186.0 max latency.
1284491 records sent, 256898.2 records/sec (1.22 MB/sec), 7.2 ms avg latency, 228.0 max latency.
2858387 records sent, 568267.8 records/sec (2.71 MB/sec), 4.9 ms avg latency, 187.0 max latency.
1592639 records sent, 315249.2 records/sec (1.50 MB/sec), 6.4 ms avg latency, 177.0 max latency.
1799794 records sent, 359958.8 records/sec (1.72 MB/sec), 6.1 ms avg latency, 198.0 max latency.
3070356 records sent, 608835.2 records/sec (2.90 MB/sec), 6.4 ms avg latency, 183.0 max latency.
4098924 records sent, 819784.8 records/sec (3.91 MB/sec), 6.1 ms avg latency, 221.0 max latency.
2247226 records sent, 449445.2 records/sec (2.14 MB/sec), 13.7 ms avg latency, 268.0 max latency.
2736500 records sent, 543927.6 records/sec (2.59 MB/sec), 5.0 ms avg latency, 206.0 max latency.
2508486 records sent, 501697.2 records/sec (2.39 MB/sec), 5.6 ms avg latency, 181.0 max latency.
2921225 records sent, 584245.0 records/sec (2.79 MB/sec), 5.7 ms avg latency, 157.0 max latency.
3027240 records sent, 605448.0 records/sec (2.89 MB/sec), 4.8 ms avg latency, 190.0 max latency.
5178721 records sent, 1035744.2 records/sec (4.94 MB/sec), 4.5 ms avg latency, 141.0 max latency.
2283897 records sent, 456779.4 records/sec (2.18 MB/sec), 5.1 ms avg latency, 230.0 max latency.
3602586 records sent, 719509.9 records/sec (3.43 MB/sec), 4.9 ms avg latency, 187.0 max latency.
2777661 records sent, 554423.4 records/sec (2.64 MB/sec), 3.0 ms avg latency, 240.0 max latency.
1863913 records sent, 371149.5 records/sec (1.77 MB/sec), 5.4 ms avg latency, 144.0 max latency.
2964230 records sent, 590954.9 records/sec (2.82 MB/sec), 4.5 ms avg latency, 195.0 max latency.
1977990 records sent, 395598.0 records/sec (1.89 MB/sec), 8.5 ms avg latency, 202.0 max latency.
2921274 records sent, 574262.6 records/sec (2.74 MB/sec), 20.8 ms avg latency, 402.0 max latency.
1346544 records sent, 264183.6 records/sec (1.26 MB/sec), 6.2 ms avg latency, 183.0 max latency.
2637906 records sent, 527581.2 records/sec (2.52 MB/sec), 6.4 ms avg latency, 185.0 max latency.
2861644 records sent, 572328.8 records/sec (2.73 MB/sec), 16.0 ms avg latency, 349.0 max latency.
1589483 records sent, 314127.1 records/sec (1.50 MB/sec), 6.0 ms avg latency, 150.0 max latency.
1297892 records sent, 259578.4 records/sec (1.24 MB/sec), 11.7 ms avg latency, 224.0 max latency.
1284536 records sent, 255070.7 records/sec (1.22 MB/sec), 6.7 ms avg latency, 225.0 max latency.
2912339 records sent, 572393.7 records/sec (2.73 MB/sec), 6.6 ms avg latency, 149.0 max latency.
2306994 records sent, 461398.8 records/sec (2.20 MB/sec), 5.5 ms avg latency, 162.0 max latency.
3163420 records sent, 632684.0 records/sec (3.02 MB/sec), 7.7 ms avg latency, 228.0 max latency.
2147765 records sent, 428353.6 records/sec (2.04 MB/sec), 10.3 ms avg latency, 293.0 max latency.
3919587 records sent, 783917.4 records/sec (3.74 MB/sec), 11.9 ms avg latency, 249.0 max latency.
2695363 records sent, 539072.6 records/sec (2.57 MB/sec), 4.4 ms avg latency, 204.0 max latency.
2230898 records sent, 436575.0 records/sec (2.08 MB/sec), 6.1 ms avg latency, 208.0 max latency.
2578935 records sent, 515787.0 records/sec (2.46 MB/sec), 9.0 ms avg latency, 205.0 max latency.
2878235 records sent, 565690.8 records/sec (2.70 MB/sec), 8.2 ms avg latency, 177.0 max latency.
2792230 records sent, 556221.1 records/sec (2.65 MB/sec), 6.9 ms avg latency, 198.0 max latency.
3720113 records sent, 741058.4 records/sec (3.53 MB/sec), 7.8 ms avg latency, 263.0 max latency.
2410356 records sent, 478530.1 records/sec (2.28 MB/sec), 10.3 ms avg latency, 264.0 max latency.
3201115 records sent, 640223.0 records/sec (3.05 MB/sec), 4.3 ms avg latency, 196.0 max latency.
3592434 records sent, 717769.0 records/sec (3.42 MB/sec), 5.1 ms avg latency, 140.0 max latency.
2602832 records sent, 520566.4 records/sec (2.48 MB/sec), 6.2 ms avg latency, 210.0 max latency.
2338582 records sent, 467716.4 records/sec (2.23 MB/sec), 14.5 ms avg latency, 363.0 max latency.
2181513 records sent, 436302.6 records/sec (2.08 MB/sec), 8.0 ms avg latency, 252.0 max latency.
3482678 records sent, 696535.6 records/sec (3.32 MB/sec), 4.6 ms avg latency, 204.0 max latency.
1352454 records sent, 268984.5 records/sec (1.28 MB/sec), 11.1 ms avg latency, 222.0 max latency.
4232199 records sent, 846439.8 records/sec (4.04 MB/sec), 12.3 ms avg latency, 221.0 max latency.
3432372 records sent, 678871.0 records/sec (3.24 MB/sec), 7.0 ms avg latency, 160.0 max latency.
2379914 records sent, 475982.8 records/sec (2.27 MB/sec), 5.2 ms avg latency, 160.0 max latency.
2389461 records sent, 475988.2 records/sec (2.27 MB/sec), 22.5 ms avg latency, 387.0 max latency.
1342984 records sent, 268114.2 records/sec (1.28 MB/sec), 7.0 ms avg latency, 246.0 max latency.
1421802 records sent, 281656.5 records/sec (1.34 MB/sec), 7.3 ms avg latency, 280.0 max latency.
1963289 records sent, 391639.5 records/sec (1.87 MB/sec), 8.8 ms avg latency, 281.0 max latency.
2039003 records sent, 407067.9 records/sec (1.94 MB/sec), 6.5 ms avg latency, 216.0 max latency.
1672064 records sent, 329211.3 records/sec (1.57 MB/sec), 7.2 ms avg latency, 246.0 max latency.
3049047 records sent, 607017.1 records/sec (2.89 MB/sec), 5.4 ms avg latency, 167.0 max latency.
2534383 records sent, 506876.6 records/sec (2.42 MB/sec), 9.3 ms avg latency, 210.0 max latency.
1405563 records sent, 280271.8 records/sec (1.34 MB/sec), 7.0 ms avg latency, 192.0 max latency.
1391376 records sent, 271859.3 records/sec (1.30 MB/sec), 11.5 ms avg latency, 244.0 max latency.
1918300 records sent, 383276.7 records/sec (1.83 MB/sec), 7.1 ms avg latency, 233.0 max latency.
2506719 records sent, 501343.8 records/sec (2.39 MB/sec), 6.3 ms avg latency, 206.0 max latency.
1763146 records sent, 350874.8 records/sec (1.67 MB/sec), 4.7 ms avg latency, 235.0 max latency.
1450459 records sent, 289512.8 records/sec (1.38 MB/sec), 7.0 ms avg latency, 252.0 max latency.
2427260 records sent, 485452.0 records/sec (2.31 MB/sec), 6.0 ms avg latency, 179.0 max latency.
1866391 records sent, 372013.4 records/sec (1.77 MB/sec), 6.4 ms avg latency, 214.0 max latency.
2587664 records sent, 517532.8 records/sec (2.47 MB/sec), 4.9 ms avg latency, 208.0 max latency.
3157385 records sent, 624482.8 records/sec (2.98 MB/sec), 11.2 ms avg latency, 291.0 max latency.
2872832 records sent, 565518.1 records/sec (2.70 MB/sec), 10.1 ms avg latency, 369.0 max latency.
3111899 records sent, 622379.8 records/sec (2.97 MB/sec), 11.2 ms avg latency, 442.0 max latency.
2900665 records sent, 570660.0 records/sec (2.72 MB/sec), 4.9 ms avg latency, 173.0 max latency.
2947021 records sent, 588580.2 records/sec (2.81 MB/sec), 11.4 ms avg latency, 289.0 max latency.
1338844 records sent, 266066.0 records/sec (1.27 MB/sec), 7.2 ms avg latency, 162.0 max latency.
2086840 records sent, 417368.0 records/sec (1.99 MB/sec), 4.5 ms avg latency, 209.0 max latency.
2907836 records sent, 581567.2 records/sec (2.77 MB/sec), 4.6 ms avg latency, 172.0 max latency.
2117678 records sent, 423197.0 records/sec (2.02 MB/sec), 4.6 ms avg latency, 209.0 max latency.
1507693 records sent, 300516.8 records/sec (1.43 MB/sec), 6.1 ms avg latency, 227.0 max latency.
2621263 records sent, 524252.6 records/sec (2.50 MB/sec), 4.2 ms avg latency, 137.0 max latency.
2763354 records sent, 551237.6 records/sec (2.63 MB/sec), 5.7 ms avg latency, 227.0 max latency.
1477801 records sent, 288576.6 records/sec (1.38 MB/sec), 6.1 ms avg latency, 175.0 max latency.
2493626 records sent, 486846.2 records/sec (2.32 MB/sec), 5.8 ms avg latency, 175.0 max latency.
2586955 records sent, 508642.4 records/sec (2.43 MB/sec), 7.3 ms avg latency, 243.0 max latency.
2169518 records sent, 433903.6 records/sec (2.07 MB/sec), 10.2 ms avg latency, 193.0 max latency.
2031104 records sent, 403076.8 records/sec (1.92 MB/sec), 5.3 ms avg latency, 196.0 max latency.
1379716 records sent, 274352.0 records/sec (1.31 MB/sec), 10.8 ms avg latency, 269.0 max latency.
1639117 records sent, 327103.8 records/sec (1.56 MB/sec), 7.6 ms avg latency, 295.0 max latency.
1511925 records sent, 302385.0 records/sec (1.44 MB/sec), 6.4 ms avg latency, 180.0 max latency.
2019171 records sent, 402706.6 records/sec (1.92 MB/sec), 6.4 ms avg latency, 165.0 max latency.
1154596 records sent, 229132.0 records/sec (1.09 MB/sec), 8.4 ms avg latency, 214.0 max latency.
2486333 records sent, 497266.6 records/sec (2.37 MB/sec), 6.3 ms avg latency, 218.0 max latency.
1965590 records sent, 386546.7 records/sec (1.84 MB/sec), 8.9 ms avg latency, 179.0 max latency.
1553971 records sent, 310794.2 records/sec (1.48 MB/sec), 8.6 ms avg latency, 218.0 max latency.
1657553 records sent, 325393.2 records/sec (1.55 MB/sec), 10.3 ms avg latency, 196.0 max latency.
1419134 records sent, 283826.8 records/sec (1.35 MB/sec), 8.1 ms avg latency, 191.0 max latency.
2399115 records sent, 479631.1 records/sec (2.29 MB/sec), 6.2 ms avg latency, 162.0 max latency.
2109120 records sent, 420562.3 records/sec (2.01 MB/sec), 5.7 ms avg latency, 197.0 max latency.
2455775 records sent, 487740.8 records/sec (2.33 MB/sec), 7.3 ms avg latency, 219.0 max latency.
1477000 records sent, 295400.0 records/sec (1.41 MB/sec), 6.8 ms avg latency, 258.0 max latency.
1409864 records sent, 281972.8 records/sec (1.34 MB/sec), 5.5 ms avg latency, 202.0 max latency.
2155991 records sent, 424909.5 records/sec (2.03 MB/sec), 7.0 ms avg latency, 219.0 max latency.
1362669 records sent, 271935.5 records/sec (1.30 MB/sec), 6.2 ms avg latency, 224.0 max latency.
1813583 records sent, 357779.2 records/sec (1.71 MB/sec), 5.2 ms avg latency, 203.0 max latency.
2252549 records sent, 450509.8 records/sec (2.15 MB/sec), 5.8 ms avg latency, 228.0 max latency.
1383742 records sent, 275316.8 records/sec (1.31 MB/sec), 7.1 ms avg latency, 243.0 max latency.
2069365 records sent, 410832.8 records/sec (1.96 MB/sec), 5.2 ms avg latency, 218.0 max latency.
1745807 records sent, 347770.3 records/sec (1.66 MB/sec), 8.1 ms avg latency, 198.0 max latency.
2391148 records sent, 475566.4 records/sec (2.27 MB/sec), 5.7 ms avg latency, 207.0 max latency.
2313464 records sent, 460390.8 records/sec (2.20 MB/sec), 9.0 ms avg latency, 217.0 max latency.
1236460 records sent, 245573.0 records/sec (1.17 MB/sec), 8.9 ms avg latency, 232.0 max latency.
2197991 records sent, 439598.2 records/sec (2.10 MB/sec), 6.1 ms avg latency, 162.0 max latency.
2801202 records sent, 556235.5 records/sec (2.65 MB/sec), 4.5 ms avg latency, 208.0 max latency.
3182543 records sent, 628216.1 records/sec (3.00 MB/sec), 3.1 ms avg latency, 183.0 max latency.
1446895 records sent, 286968.5 records/sec (1.37 MB/sec), 9.7 ms avg latency, 225.0 max latency.
1781307 records sent, 355125.0 records/sec (1.69 MB/sec), 6.2 ms avg latency, 186.0 max latency.
2850964 records sent, 570192.8 records/sec (2.72 MB/sec), 3.4 ms avg latency, 180.0 max latency.
2303616 records sent, 455981.0 records/sec (2.17 MB/sec), 7.2 ms avg latency, 225.0 max latency.
1395723 records sent, 279144.6 records/sec (1.33 MB/sec), 7.0 ms avg latency, 173.0 max latency.
3211529 records sent, 642305.8 records/sec (3.06 MB/sec), 5.6 ms avg latency, 230.0 max latency.
1984596 records sent, 394316.7 records/sec (1.88 MB/sec), 6.2 ms avg latency, 266.0 max latency.
2920943 records sent, 582093.1 records/sec (2.78 MB/sec), 4.2 ms avg latency, 173.0 max latency.
1458567 records sent, 291713.4 records/sec (1.39 MB/sec), 6.1 ms avg latency, 149.0 max latency.
1791500 records sent, 358300.0 records/sec (1.71 MB/sec), 5.9 ms avg latency, 167.0 max latency.
1933752 records sent, 386750.4 records/sec (1.84 MB/sec), 5.3 ms avg latency, 189.0 max latency.
3792956 records sent, 744300.6 records/sec (3.55 MB/sec), 2.6 ms avg latency, 116.0 max latency.
2434659 records sent, 486931.8 records/sec (2.32 MB/sec), 5.2 ms avg latency, 213.0 max latency.
2753558 records sent, 544073.9 records/sec (2.59 MB/sec), 9.2 ms avg latency, 203.0 max latency.
2576535 records sent, 515307.0 records/sec (2.46 MB/sec), 3.8 ms avg latency, 205.0 max latency.
1960010 records sent, 392002.0 records/sec (1.87 MB/sec), 5.5 ms avg latency, 160.0 max latency.
3157249 records sent, 629812.3 records/sec (3.00 MB/sec), 3.9 ms avg latency, 242.0 max latency.
2644958 records sent, 528991.6 records/sec (2.52 MB/sec), 4.3 ms avg latency, 216.0 max latency.
3367243 records sent, 673448.6 records/sec (3.21 MB/sec), 4.9 ms avg latency, 157.0 max latency.
3091922 records sent, 612140.6 records/sec (2.92 MB/sec), 9.9 ms avg latency, 202.0 max latency.
2657868 records sent, 531573.6 records/sec (2.53 MB/sec), 5.6 ms avg latency, 286.0 max latency.
1490571 records sent, 296572.0 records/sec (1.41 MB/sec), 6.5 ms avg latency, 160.0 max latency.
3649006 records sent, 729801.2 records/sec (3.48 MB/sec), 6.6 ms avg latency, 178.0 max latency.
1348350 records sent, 267052.9 records/sec (1.27 MB/sec), 8.5 ms avg latency, 234.0 max latency.
1377636 records sent, 275527.2 records/sec (1.31 MB/sec), 6.8 ms avg latency, 202.0 max latency.
3447251 records sent, 677259.5 records/sec (3.23 MB/sec), 4.3 ms avg latency, 193.0 max latency.
2971940 records sent, 587688.4 records/sec (2.80 MB/sec), 6.5 ms avg latency, 176.0 max latency.
2196347 records sent, 436389.2 records/sec (2.08 MB/sec), 8.3 ms avg latency, 258.0 max latency.
2279947 records sent, 455989.4 records/sec (2.17 MB/sec), 6.3 ms avg latency, 215.0 max latency.
2643603 records sent, 521626.5 records/sec (2.49 MB/sec), 4.7 ms avg latency, 215.0 max latency.
2697284 records sent, 539456.8 records/sec (2.57 MB/sec), 5.7 ms avg latency, 269.0 max latency.
1650572 records sent, 326458.1 records/sec (1.56 MB/sec), 6.3 ms avg latency, 194.0 max latency.
2438596 records sent, 487719.2 records/sec (2.33 MB/sec), 5.0 ms avg latency, 214.0 max latency.
3469548 records sent, 693909.6 records/sec (3.31 MB/sec), 8.3 ms avg latency, 287.0 max latency.
2841038 records sent, 558709.5 records/sec (2.66 MB/sec), 9.8 ms avg latency, 380.0 max latency.
2440064 records sent, 483659.9 records/sec (2.31 MB/sec), 7.2 ms avg latency, 210.0 max latency.
2446325 records sent, 484612.7 records/sec (2.31 MB/sec), 5.4 ms avg latency, 216.0 max latency.
2814569 records sent, 557230.1 records/sec (2.66 MB/sec), 4.5 ms avg latency, 194.0 max latency.
3425577 records sent, 684704.6 records/sec (3.26 MB/sec), 7.8 ms avg latency, 210.0 max latency.
1626657 records sent, 319893.2 records/sec (1.53 MB/sec), 5.5 ms avg latency, 156.0 max latency.
1686139 records sent, 337227.8 records/sec (1.61 MB/sec), 6.8 ms avg latency, 191.0 max latency.
2066914 records sent, 409614.3 records/sec (1.95 MB/sec), 4.8 ms avg latency, 203.0 max latency.
1368084 records sent, 271015.1 records/sec (1.29 MB/sec), 6.4 ms avg latency, 262.0 max latency.
2117960 records sent, 418156.0 records/sec (1.99 MB/sec), 4.4 ms avg latency, 172.0 max latency.
2358008 records sent, 463171.9 records/sec (2.21 MB/sec), 4.4 ms avg latency, 189.0 max latency.
1260487 records sent, 249749.8 records/sec (1.19 MB/sec), 6.8 ms avg latency, 192.0 max latency.
2096054 records sent, 414321.8 records/sec (1.98 MB/sec), 10.4 ms avg latency, 214.0 max latency.
2742178 records sent, 534433.4 records/sec (2.55 MB/sec), 4.1 ms avg latency, 204.0 max latency.
2834587 records sent, 562641.3 records/sec (2.68 MB/sec), 4.3 ms avg latency, 187.0 max latency.
2110060 records sent, 422012.0 records/sec (2.01 MB/sec), 6.4 ms avg latency, 205.0 max latency.
1330717 records sent, 265559.2 records/sec (1.27 MB/sec), 8.0 ms avg latency, 213.0 max latency.
2085886 records sent, 413948.4 records/sec (1.97 MB/sec), 8.5 ms avg latency, 233.0 max latency.
2628438 records sent, 512166.4 records/sec (2.44 MB/sec), 10.8 ms avg latency, 269.0 max latency.
2394150 records sent, 478830.0 records/sec (2.28 MB/sec), 8.9 ms avg latency, 218.0 max latency.
2492972 records sent, 494931.9 records/sec (2.36 MB/sec), 6.0 ms avg latency, 202.0 max latency.
2032019 records sent, 406322.5 records/sec (1.94 MB/sec), 8.5 ms avg latency, 258.0 max latency.
3781867 records sent, 750370.4 records/sec (3.58 MB/sec), 6.7 ms avg latency, 189.0 max latency.
2508266 records sent, 501653.2 records/sec (2.39 MB/sec), 4.1 ms avg latency, 171.0 max latency.
2548756 records sent, 507720.3 records/sec (2.42 MB/sec), 7.5 ms avg latency, 227.0 max latency.
2845711 records sent, 560289.6 records/sec (2.67 MB/sec), 15.5 ms avg latency, 419.0 max latency.
1759106 records sent, 351821.2 records/sec (1.68 MB/sec), 5.3 ms avg latency, 151.0 max latency.
3617943 records sent, 721424.3 records/sec (3.44 MB/sec), 6.3 ms avg latency, 194.0 max latency.
3143408 records sent, 623073.9 records/sec (2.97 MB/sec), 3.8 ms avg latency, 250.0 max latency.
1993107 records sent, 391342.4 records/sec (1.87 MB/sec), 8.9 ms avg latency, 248.0 max latency.
1375317 records sent, 275063.4 records/sec (1.31 MB/sec), 5.4 ms avg latency, 182.0 max latency.
1438990 records sent, 286366.2 records/sec (1.37 MB/sec), 5.4 ms avg latency, 174.0 max latency.
2718322 records sent, 530094.0 records/sec (2.53 MB/sec), 7.3 ms avg latency, 209.0 max latency.
2063364 records sent, 412672.8 records/sec (1.97 MB/sec), 6.2 ms avg latency, 178.0 max latency.
3494726 records sent, 697550.1 records/sec (3.33 MB/sec), 4.5 ms avg latency, 195.0 max latency.
2288247 records sent, 457649.4 records/sec (2.18 MB/sec), 6.0 ms avg latency, 186.0 max latency.
500000000 records sent, 486567.809063 records/sec (2.32 MB/sec), 6.96 ms avg latency, 616.00 ms max latency, 1 ms 50th, 45 ms 95th, 132 ms 99th, 252 ms 99.9th.


With PX replication = 1 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1430103 records sent, 282964.6 records/sec (1.35 MB/sec), 16.6 ms avg latency, 368.0 max latency.
1576102 records sent, 315220.4 records/sec (1.50 MB/sec), 9.9 ms avg latency, 200.0 max latency.
3695254 records sent, 734642.9 records/sec (3.50 MB/sec), 7.9 ms avg latency, 222.0 max latency.
3520638 records sent, 704127.6 records/sec (3.36 MB/sec), 6.8 ms avg latency, 212.0 max latency.
2560962 records sent, 504523.6 records/sec (2.41 MB/sec), 5.4 ms avg latency, 236.0 max latency.
2993228 records sent, 598645.6 records/sec (2.85 MB/sec), 7.8 ms avg latency, 271.0 max latency.
4596609 records sent, 918954.2 records/sec (4.38 MB/sec), 7.5 ms avg latency, 296.0 max latency.
3203784 records sent, 640628.7 records/sec (3.05 MB/sec), 6.5 ms avg latency, 190.0 max latency.
3040194 records sent, 608038.8 records/sec (2.90 MB/sec), 5.1 ms avg latency, 139.0 max latency.
4598128 records sent, 916875.0 records/sec (4.37 MB/sec), 7.3 ms avg latency, 295.0 max latency.
5677061 records sent, 1135412.2 records/sec (5.41 MB/sec), 4.7 ms avg latency, 143.0 max latency.
4606751 records sent, 921350.2 records/sec (4.39 MB/sec), 4.8 ms avg latency, 186.0 max latency.
3973700 records sent, 788276.1 records/sec (3.76 MB/sec), 6.5 ms avg latency, 186.0 max latency.
3038815 records sent, 599135.4 records/sec (2.86 MB/sec), 7.0 ms avg latency, 227.0 max latency.
3905251 records sent, 781050.2 records/sec (3.72 MB/sec), 5.4 ms avg latency, 226.0 max latency.
4443367 records sent, 883373.2 records/sec (4.21 MB/sec), 6.4 ms avg latency, 165.0 max latency.
5237497 records sent, 1047499.4 records/sec (4.99 MB/sec), 2.5 ms avg latency, 160.0 max latency.
2895695 records sent, 572837.8 records/sec (2.73 MB/sec), 7.9 ms avg latency, 216.0 max latency.
4351821 records sent, 864142.4 records/sec (4.12 MB/sec), 5.7 ms avg latency, 145.0 max latency.
4136303 records sent, 827260.6 records/sec (3.94 MB/sec), 8.6 ms avg latency, 247.0 max latency.
3163482 records sent, 632696.4 records/sec (3.02 MB/sec), 8.3 ms avg latency, 201.0 max latency.
5756125 records sent, 1138249.0 records/sec (5.43 MB/sec), 6.8 ms avg latency, 187.0 max latency.
3994804 records sent, 781915.1 records/sec (3.73 MB/sec), 4.7 ms avg latency, 170.0 max latency.
3682284 records sent, 736456.8 records/sec (3.51 MB/sec), 7.1 ms avg latency, 215.0 max latency.
4316933 records sent, 860804.2 records/sec (4.10 MB/sec), 5.3 ms avg latency, 145.0 max latency.
5567615 records sent, 1113300.3 records/sec (5.31 MB/sec), 4.9 ms avg latency, 155.0 max latency.
5390908 records sent, 1078181.6 records/sec (5.14 MB/sec), 5.2 ms avg latency, 174.0 max latency.
3524406 records sent, 691195.5 records/sec (3.30 MB/sec), 6.8 ms avg latency, 220.0 max latency.
2852531 records sent, 567893.9 records/sec (2.71 MB/sec), 4.0 ms avg latency, 218.0 max latency.
3984029 records sent, 796805.8 records/sec (3.80 MB/sec), 9.4 ms avg latency, 337.0 max latency.
4219004 records sent, 839268.7 records/sec (4.00 MB/sec), 8.9 ms avg latency, 287.0 max latency.
3803322 records sent, 760664.4 records/sec (3.63 MB/sec), 7.5 ms avg latency, 264.0 max latency.
4539781 records sent, 907956.2 records/sec (4.33 MB/sec), 7.4 ms avg latency, 177.0 max latency.
5813999 records sent, 1162799.8 records/sec (5.54 MB/sec), 5.5 ms avg latency, 127.0 max latency.
3620485 records sent, 724097.0 records/sec (3.45 MB/sec), 6.8 ms avg latency, 172.0 max latency.
5574475 records sent, 1114895.0 records/sec (5.32 MB/sec), 7.0 ms avg latency, 239.0 max latency.
4907818 records sent, 981563.6 records/sec (4.68 MB/sec), 2.9 ms avg latency, 132.0 max latency.
4587196 records sent, 917439.2 records/sec (4.37 MB/sec), 3.6 ms avg latency, 213.0 max latency.
5355603 records sent, 1071120.6 records/sec (5.11 MB/sec), 5.3 ms avg latency, 139.0 max latency.
4671267 records sent, 933506.6 records/sec (4.45 MB/sec), 3.6 ms avg latency, 115.0 max latency.
5330227 records sent, 1066045.4 records/sec (5.08 MB/sec), 3.9 ms avg latency, 174.0 max latency.
5001707 records sent, 1000341.4 records/sec (4.77 MB/sec), 5.0 ms avg latency, 166.0 max latency.
2715628 records sent, 529052.8 records/sec (2.52 MB/sec), 6.4 ms avg latency, 212.0 max latency.
3471886 records sent, 688183.5 records/sec (3.28 MB/sec), 6.3 ms avg latency, 198.0 max latency.
3235606 records sent, 642622.8 records/sec (3.06 MB/sec), 4.8 ms avg latency, 211.0 max latency.
3979402 records sent, 795880.4 records/sec (3.80 MB/sec), 10.7 ms avg latency, 206.0 max latency.
3613348 records sent, 722669.6 records/sec (3.45 MB/sec), 7.8 ms avg latency, 203.0 max latency.
2845198 records sent, 562848.3 records/sec (2.68 MB/sec), 5.9 ms avg latency, 199.0 max latency.
2235205 records sent, 447041.0 records/sec (2.13 MB/sec), 6.4 ms avg latency, 198.0 max latency.
1198539 records sent, 238183.4 records/sec (1.14 MB/sec), 6.9 ms avg latency, 185.0 max latency.
1315815 records sent, 263110.4 records/sec (1.25 MB/sec), 6.9 ms avg latency, 169.0 max latency.
2214173 records sent, 435346.6 records/sec (2.08 MB/sec), 7.1 ms avg latency, 194.0 max latency.
1344160 records sent, 265486.9 records/sec (1.27 MB/sec), 7.2 ms avg latency, 178.0 max latency.
2146161 records sent, 415681.0 records/sec (1.98 MB/sec), 5.5 ms avg latency, 209.0 max latency.
3212565 records sent, 642513.0 records/sec (3.06 MB/sec), 5.2 ms avg latency, 175.0 max latency.
1657616 records sent, 331390.6 records/sec (1.58 MB/sec), 7.7 ms avg latency, 189.0 max latency.
2628883 records sent, 510264.6 records/sec (2.43 MB/sec), 7.3 ms avg latency, 214.0 max latency.
2135188 records sent, 422725.8 records/sec (2.02 MB/sec), 5.5 ms avg latency, 164.0 max latency.
1293615 records sent, 257026.6 records/sec (1.23 MB/sec), 7.9 ms avg latency, 267.0 max latency.
2190459 records sent, 437042.9 records/sec (2.08 MB/sec), 4.5 ms avg latency, 218.0 max latency.
2229236 records sent, 444070.9 records/sec (2.12 MB/sec), 7.2 ms avg latency, 240.0 max latency.
2137502 records sent, 427500.4 records/sec (2.04 MB/sec), 6.8 ms avg latency, 246.0 max latency.
1566187 records sent, 311803.1 records/sec (1.49 MB/sec), 6.4 ms avg latency, 161.0 max latency.
1170398 records sent, 232776.1 records/sec (1.11 MB/sec), 13.9 ms avg latency, 321.0 max latency.
1217459 records sent, 243491.8 records/sec (1.16 MB/sec), 8.3 ms avg latency, 233.0 max latency.
1817382 records sent, 362606.1 records/sec (1.73 MB/sec), 20.1 ms avg latency, 352.0 max latency.
1926059 records sent, 380794.6 records/sec (1.82 MB/sec), 10.0 ms avg latency, 218.0 max latency.
2257155 records sent, 450350.2 records/sec (2.15 MB/sec), 8.3 ms avg latency, 136.0 max latency.
2291268 records sent, 458253.6 records/sec (2.19 MB/sec), 10.2 ms avg latency, 241.0 max latency.
2872488 records sent, 574497.6 records/sec (2.74 MB/sec), 5.7 ms avg latency, 145.0 max latency.
3473896 records sent, 694779.2 records/sec (3.31 MB/sec), 5.3 ms avg latency, 148.0 max latency.
1653699 records sent, 330739.8 records/sec (1.58 MB/sec), 5.9 ms avg latency, 205.0 max latency.
1158885 records sent, 228171.9 records/sec (1.09 MB/sec), 7.1 ms avg latency, 214.0 max latency.
1583304 records sent, 313960.7 records/sec (1.50 MB/sec), 12.2 ms avg latency, 201.0 max latency.
2443930 records sent, 483276.6 records/sec (2.30 MB/sec), 5.0 ms avg latency, 218.0 max latency.
1590694 records sent, 314739.6 records/sec (1.50 MB/sec), 6.5 ms avg latency, 203.0 max latency.
1743887 records sent, 347111.3 records/sec (1.66 MB/sec), 6.0 ms avg latency, 244.0 max latency.
2971571 records sent, 590182.9 records/sec (2.81 MB/sec), 4.9 ms avg latency, 178.0 max latency.
3883757 records sent, 775046.3 records/sec (3.70 MB/sec), 7.8 ms avg latency, 272.0 max latency.
3886216 records sent, 777243.2 records/sec (3.71 MB/sec), 4.0 ms avg latency, 170.0 max latency.
3284281 records sent, 644861.8 records/sec (3.07 MB/sec), 4.2 ms avg latency, 147.0 max latency.
4402944 records sent, 877255.2 records/sec (4.18 MB/sec), 8.4 ms avg latency, 214.0 max latency.
1425061 records sent, 282694.1 records/sec (1.35 MB/sec), 6.5 ms avg latency, 276.0 max latency.
2340997 records sent, 465129.5 records/sec (2.22 MB/sec), 5.3 ms avg latency, 178.0 max latency.
3231495 records sent, 646299.0 records/sec (3.08 MB/sec), 7.9 ms avg latency, 202.0 max latency.
4031324 records sent, 806264.8 records/sec (3.84 MB/sec), 7.9 ms avg latency, 192.0 max latency.
3354996 records sent, 670999.2 records/sec (3.20 MB/sec), 6.7 ms avg latency, 232.0 max latency.
2138965 records sent, 419076.2 records/sec (2.00 MB/sec), 7.2 ms avg latency, 362.0 max latency.
3389566 records sent, 677913.2 records/sec (3.23 MB/sec), 7.2 ms avg latency, 190.0 max latency.
1651529 records sent, 330239.8 records/sec (1.57 MB/sec), 6.1 ms avg latency, 193.0 max latency.
3595304 records sent, 705791.9 records/sec (3.37 MB/sec), 7.4 ms avg latency, 180.0 max latency.
1851443 records sent, 370288.6 records/sec (1.77 MB/sec), 5.8 ms avg latency, 233.0 max latency.
2262056 records sent, 451328.0 records/sec (2.15 MB/sec), 5.7 ms avg latency, 195.0 max latency.
3711744 records sent, 742348.8 records/sec (3.54 MB/sec), 11.4 ms avg latency, 266.0 max latency.
2502369 records sent, 500473.8 records/sec (2.39 MB/sec), 6.4 ms avg latency, 236.0 max latency.
2327488 records sent, 456728.4 records/sec (2.18 MB/sec), 7.0 ms avg latency, 168.0 max latency.
1644685 records sent, 327953.1 records/sec (1.56 MB/sec), 5.3 ms avg latency, 198.0 max latency.
3619097 records sent, 718359.9 records/sec (3.43 MB/sec), 9.9 ms avg latency, 303.0 max latency.
3919399 records sent, 764462.5 records/sec (3.65 MB/sec), 4.6 ms avg latency, 211.0 max latency.
2394693 records sent, 475609.3 records/sec (2.27 MB/sec), 4.5 ms avg latency, 185.0 max latency.
1888359 records sent, 373341.0 records/sec (1.78 MB/sec), 8.0 ms avg latency, 269.0 max latency.
2496418 records sent, 499283.6 records/sec (2.38 MB/sec), 5.0 ms avg latency, 171.0 max latency.
1434382 records sent, 283811.2 records/sec (1.35 MB/sec), 7.1 ms avg latency, 200.0 max latency.
1862280 records sent, 372456.0 records/sec (1.78 MB/sec), 4.9 ms avg latency, 266.0 max latency.
1603753 records sent, 315948.2 records/sec (1.51 MB/sec), 8.1 ms avg latency, 252.0 max latency.
2026394 records sent, 404469.9 records/sec (1.93 MB/sec), 8.6 ms avg latency, 167.0 max latency.
2177033 records sent, 426785.5 records/sec (2.04 MB/sec), 4.3 ms avg latency, 190.0 max latency.
1344720 records sent, 264865.1 records/sec (1.26 MB/sec), 9.8 ms avg latency, 224.0 max latency.
1227533 records sent, 245506.6 records/sec (1.17 MB/sec), 7.0 ms avg latency, 212.0 max latency.
2047829 records sent, 409565.8 records/sec (1.95 MB/sec), 5.0 ms avg latency, 239.0 max latency.
1570457 records sent, 311598.6 records/sec (1.49 MB/sec), 5.1 ms avg latency, 180.0 max latency.
1295178 records sent, 255711.4 records/sec (1.22 MB/sec), 6.0 ms avg latency, 175.0 max latency.
1601565 records sent, 314155.6 records/sec (1.50 MB/sec), 8.0 ms avg latency, 277.0 max latency.
1379275 records sent, 272691.8 records/sec (1.30 MB/sec), 6.4 ms avg latency, 157.0 max latency.
1892099 records sent, 378419.8 records/sec (1.80 MB/sec), 5.9 ms avg latency, 210.0 max latency.
1455215 records sent, 289999.0 records/sec (1.38 MB/sec), 7.6 ms avg latency, 263.0 max latency.
1878615 records sent, 373185.3 records/sec (1.78 MB/sec), 12.5 ms avg latency, 277.0 max latency.
2797636 records sent, 558410.4 records/sec (2.66 MB/sec), 5.1 ms avg latency, 207.0 max latency.
2121299 records sent, 418815.2 records/sec (2.00 MB/sec), 4.7 ms avg latency, 234.0 max latency.
2671684 records sent, 534336.8 records/sec (2.55 MB/sec), 10.1 ms avg latency, 211.0 max latency.
1865870 records sent, 371465.3 records/sec (1.77 MB/sec), 8.2 ms avg latency, 164.0 max latency.
2386225 records sent, 477245.0 records/sec (2.28 MB/sec), 5.2 ms avg latency, 163.0 max latency.
1755033 records sent, 349190.8 records/sec (1.67 MB/sec), 6.5 ms avg latency, 174.0 max latency.
2781101 records sent, 547676.4 records/sec (2.61 MB/sec), 6.8 ms avg latency, 253.0 max latency.
1308744 records sent, 256314.9 records/sec (1.22 MB/sec), 9.1 ms avg latency, 213.0 max latency.
2162149 records sent, 432429.8 records/sec (2.06 MB/sec), 5.2 ms avg latency, 183.0 max latency.
1717534 records sent, 342547.7 records/sec (1.63 MB/sec), 5.2 ms avg latency, 176.0 max latency.
2164513 records sent, 432038.5 records/sec (2.06 MB/sec), 10.1 ms avg latency, 228.0 max latency.
2062623 records sent, 408521.1 records/sec (1.95 MB/sec), 5.7 ms avg latency, 226.0 max latency.
1238093 records sent, 247618.6 records/sec (1.18 MB/sec), 6.0 ms avg latency, 206.0 max latency.
2437836 records sent, 483122.5 records/sec (2.30 MB/sec), 6.8 ms avg latency, 163.0 max latency.
1455450 records sent, 289526.6 records/sec (1.38 MB/sec), 6.5 ms avg latency, 147.0 max latency.
1297515 records sent, 257801.5 records/sec (1.23 MB/sec), 8.5 ms avg latency, 282.0 max latency.
2002045 records sent, 396130.8 records/sec (1.89 MB/sec), 6.2 ms avg latency, 207.0 max latency.
1207046 records sent, 237233.9 records/sec (1.13 MB/sec), 6.3 ms avg latency, 208.0 max latency.
1619742 records sent, 323948.4 records/sec (1.54 MB/sec), 5.5 ms avg latency, 174.0 max latency.
1709670 records sent, 340571.7 records/sec (1.62 MB/sec), 10.0 ms avg latency, 261.0 max latency.
1179000 records sent, 234860.6 records/sec (1.12 MB/sec), 10.0 ms avg latency, 236.0 max latency.
1210120 records sent, 239627.7 records/sec (1.14 MB/sec), 7.8 ms avg latency, 209.0 max latency.
1886885 records sent, 377377.0 records/sec (1.80 MB/sec), 6.1 ms avg latency, 226.0 max latency.
2965660 records sent, 593132.0 records/sec (2.83 MB/sec), 4.2 ms avg latency, 192.0 max latency.
2477569 records sent, 490704.9 records/sec (2.34 MB/sec), 5.5 ms avg latency, 175.0 max latency.
1304367 records sent, 259989.4 records/sec (1.24 MB/sec), 6.0 ms avg latency, 171.0 max latency.
3908180 records sent, 781636.0 records/sec (3.73 MB/sec), 4.5 ms avg latency, 134.0 max latency.
1649193 records sent, 329574.9 records/sec (1.57 MB/sec), 9.2 ms avg latency, 243.0 max latency.
3614762 records sent, 722952.4 records/sec (3.45 MB/sec), 5.1 ms avg latency, 162.0 max latency.
2173204 records sent, 433427.2 records/sec (2.07 MB/sec), 8.3 ms avg latency, 240.0 max latency.
2002970 records sent, 400594.0 records/sec (1.91 MB/sec), 13.5 ms avg latency, 271.0 max latency.
2578863 records sent, 506354.4 records/sec (2.41 MB/sec), 6.9 ms avg latency, 214.0 max latency.
1880412 records sent, 376082.4 records/sec (1.79 MB/sec), 6.3 ms avg latency, 204.0 max latency.
1861888 records sent, 366657.7 records/sec (1.75 MB/sec), 6.7 ms avg latency, 165.0 max latency.
2145424 records sent, 427630.9 records/sec (2.04 MB/sec), 5.7 ms avg latency, 188.0 max latency.
1426853 records sent, 285370.6 records/sec (1.36 MB/sec), 7.2 ms avg latency, 230.0 max latency.
1970899 records sent, 394179.8 records/sec (1.88 MB/sec), 6.9 ms avg latency, 223.0 max latency.
1157927 records sent, 230708.7 records/sec (1.10 MB/sec), 8.3 ms avg latency, 178.0 max latency.
3216160 records sent, 638127.0 records/sec (3.04 MB/sec), 8.3 ms avg latency, 203.0 max latency.
1210880 records sent, 241644.4 records/sec (1.15 MB/sec), 6.9 ms avg latency, 177.0 max latency.
3006625 records sent, 595843.2 records/sec (2.84 MB/sec), 5.5 ms avg latency, 162.0 max latency.
2294594 records sent, 454015.4 records/sec (2.16 MB/sec), 5.5 ms avg latency, 162.0 max latency.
1406204 records sent, 279785.9 records/sec (1.33 MB/sec), 7.8 ms avg latency, 240.0 max latency.
1546179 records sent, 305810.7 records/sec (1.46 MB/sec), 9.5 ms avg latency, 387.0 max latency.
1872325 records sent, 373493.9 records/sec (1.78 MB/sec), 8.2 ms avg latency, 192.0 max latency.
1147267 records sent, 229453.4 records/sec (1.09 MB/sec), 7.9 ms avg latency, 212.0 max latency.
1595502 records sent, 319100.4 records/sec (1.52 MB/sec), 5.7 ms avg latency, 181.0 max latency.
2183713 records sent, 432332.8 records/sec (2.06 MB/sec), 6.0 ms avg latency, 214.0 max latency.
2849578 records sent, 569915.6 records/sec (2.72 MB/sec), 4.8 ms avg latency, 186.0 max latency.
2714374 records sent, 542332.5 records/sec (2.59 MB/sec), 3.8 ms avg latency, 214.0 max latency.
2788265 records sent, 537652.3 records/sec (2.56 MB/sec), 15.2 ms avg latency, 315.0 max latency.
1770309 records sent, 347255.6 records/sec (1.66 MB/sec), 8.6 ms avg latency, 241.0 max latency.
2863708 records sent, 567408.0 records/sec (2.71 MB/sec), 6.8 ms avg latency, 212.0 max latency.
2037557 records sent, 407511.4 records/sec (1.94 MB/sec), 11.0 ms avg latency, 213.0 max latency.
3125630 records sent, 625126.0 records/sec (2.98 MB/sec), 5.1 ms avg latency, 175.0 max latency.
1267402 records sent, 253480.4 records/sec (1.21 MB/sec), 8.4 ms avg latency, 194.0 max latency.
1306051 records sent, 257096.7 records/sec (1.23 MB/sec), 7.9 ms avg latency, 219.0 max latency.
1995902 records sent, 398542.7 records/sec (1.90 MB/sec), 6.5 ms avg latency, 265.0 max latency.
2147997 records sent, 429599.4 records/sec (2.05 MB/sec), 5.7 ms avg latency, 169.0 max latency.
2314929 records sent, 462985.8 records/sec (2.21 MB/sec), 7.6 ms avg latency, 179.0 max latency.
1382400 records sent, 276480.0 records/sec (1.32 MB/sec), 9.1 ms avg latency, 301.0 max latency.
1572168 records sent, 312123.9 records/sec (1.49 MB/sec), 8.7 ms avg latency, 220.0 max latency.
2257903 records sent, 445433.6 records/sec (2.12 MB/sec), 8.9 ms avg latency, 185.0 max latency.
1275857 records sent, 255171.4 records/sec (1.22 MB/sec), 6.3 ms avg latency, 213.0 max latency.
1275015 records sent, 250592.6 records/sec (1.19 MB/sec), 6.8 ms avg latency, 160.0 max latency.
1824104 records sent, 364820.8 records/sec (1.74 MB/sec), 6.6 ms avg latency, 233.0 max latency.
1337692 records sent, 266951.1 records/sec (1.27 MB/sec), 6.8 ms avg latency, 144.0 max latency.
2510178 records sent, 501834.9 records/sec (2.39 MB/sec), 4.4 ms avg latency, 194.0 max latency.
1920949 records sent, 384189.8 records/sec (1.83 MB/sec), 10.9 ms avg latency, 300.0 max latency.
1939140 records sent, 386436.8 records/sec (1.84 MB/sec), 11.5 ms avg latency, 256.0 max latency.
1545170 records sent, 309034.0 records/sec (1.47 MB/sec), 5.3 ms avg latency, 180.0 max latency.
1315381 records sent, 262971.0 records/sec (1.25 MB/sec), 7.8 ms avg latency, 154.0 max latency.
1599810 records sent, 318560.3 records/sec (1.52 MB/sec), 5.0 ms avg latency, 139.0 max latency.
1321889 records sent, 264324.9 records/sec (1.26 MB/sec), 6.3 ms avg latency, 183.0 max latency.
1452894 records sent, 285721.5 records/sec (1.36 MB/sec), 7.9 ms avg latency, 194.0 max latency.
1742740 records sent, 348548.0 records/sec (1.66 MB/sec), 6.0 ms avg latency, 192.0 max latency.
1431560 records sent, 281470.7 records/sec (1.34 MB/sec), 6.0 ms avg latency, 169.0 max latency.
1875699 records sent, 375139.8 records/sec (1.79 MB/sec), 5.2 ms avg latency, 172.0 max latency.
500000000 records sent, 509302.927270 records/sec (2.43 MB/sec), 6.71 ms avg latency, 387.00 ms max latency, 1 ms 50th, 44 ms 95th, 125 ms 99th, 238 ms 99.9th.

Without PX

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5461654 records sent, 1092330.8 records/sec (5.21 MB/sec), 2.1 ms avg latency, 255.0 max latency.
6142179 records sent, 1228435.8 records/sec (5.86 MB/sec), 1.1 ms avg latency, 37.0 max latency.
6440890 records sent, 1288178.0 records/sec (6.14 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6470136 records sent, 1294027.2 records/sec (6.17 MB/sec), 0.9 ms avg latency, 28.0 max latency.
6062566 records sent, 1212513.2 records/sec (5.78 MB/sec), 0.8 ms avg latency, 84.0 max latency.
6359520 records sent, 1271904.0 records/sec (6.06 MB/sec), 1.2 ms avg latency, 89.0 max latency.
6423465 records sent, 1284693.0 records/sec (6.13 MB/sec), 1.2 ms avg latency, 84.0 max latency.
6405114 records sent, 1281022.8 records/sec (6.11 MB/sec), 0.8 ms avg latency, 28.0 max latency.
6421927 records sent, 1284385.4 records/sec (6.12 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6450135 records sent, 1286681.6 records/sec (6.14 MB/sec), 0.8 ms avg latency, 28.0 max latency.
6230666 records sent, 1246133.2 records/sec (5.94 MB/sec), 0.7 ms avg latency, 33.0 max latency.
6373814 records sent, 1274762.8 records/sec (6.08 MB/sec), 0.8 ms avg latency, 33.0 max latency.
6368034 records sent, 1271318.4 records/sec (6.06 MB/sec), 1.0 ms avg latency, 82.0 max latency.
6279663 records sent, 1255932.6 records/sec (5.99 MB/sec), 0.7 ms avg latency, 26.0 max latency.
6557492 records sent, 1311498.4 records/sec (6.25 MB/sec), 0.7 ms avg latency, 23.0 max latency.
6284406 records sent, 1256881.2 records/sec (5.99 MB/sec), 0.7 ms avg latency, 30.0 max latency.
6300518 records sent, 1260103.6 records/sec (6.01 MB/sec), 1.1 ms avg latency, 91.0 max latency.
6270279 records sent, 1254055.8 records/sec (5.98 MB/sec), 0.7 ms avg latency, 22.0 max latency.
6449083 records sent, 1289816.6 records/sec (6.15 MB/sec), 0.7 ms avg latency, 27.0 max latency.
5958435 records sent, 1191687.0 records/sec (5.68 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6083109 records sent, 1216621.8 records/sec (5.80 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6467508 records sent, 1293501.6 records/sec (6.17 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6327840 records sent, 1265568.0 records/sec (6.03 MB/sec), 1.2 ms avg latency, 109.0 max latency.
6309801 records sent, 1261960.2 records/sec (6.02 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6531759 records sent, 1306351.8 records/sec (6.23 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6574630 records sent, 1314926.0 records/sec (6.27 MB/sec), 0.7 ms avg latency, 21.0 max latency.
6602507 records sent, 1320501.4 records/sec (6.30 MB/sec), 0.7 ms avg latency, 21.0 max latency.
6655785 records sent, 1331157.0 records/sec (6.35 MB/sec), 0.6 ms avg latency, 19.0 max latency.
6260567 records sent, 1252113.4 records/sec (5.97 MB/sec), 0.7 ms avg latency, 23.0 max latency.
6598506 records sent, 1319701.2 records/sec (6.29 MB/sec), 0.7 ms avg latency, 20.0 max latency.
6415012 records sent, 1283002.4 records/sec (6.12 MB/sec), 0.7 ms avg latency, 20.0 max latency.
6480893 records sent, 1295660.3 records/sec (6.18 MB/sec), 0.7 ms avg latency, 19.0 max latency.
6717095 records sent, 1343419.0 records/sec (6.41 MB/sec), 0.7 ms avg latency, 23.0 max latency.
6585916 records sent, 1317183.2 records/sec (6.28 MB/sec), 1.0 ms avg latency, 81.0 max latency.
6419966 records sent, 1281430.3 records/sec (6.11 MB/sec), 0.7 ms avg latency, 28.0 max latency.
6930541 records sent, 1386108.2 records/sec (6.61 MB/sec), 0.7 ms avg latency, 24.0 max latency.
7105326 records sent, 1421065.2 records/sec (6.78 MB/sec), 0.7 ms avg latency, 26.0 max latency.
6784606 records sent, 1356921.2 records/sec (6.47 MB/sec), 0.7 ms avg latency, 24.0 max latency.
7347972 records sent, 1469594.4 records/sec (7.01 MB/sec), 0.8 ms avg latency, 25.0 max latency.
7074944 records sent, 1414988.8 records/sec (6.75 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6936292 records sent, 1387258.4 records/sec (6.61 MB/sec), 0.7 ms avg latency, 26.0 max latency.
7144888 records sent, 1428977.6 records/sec (6.81 MB/sec), 0.7 ms avg latency, 21.0 max latency.
6899079 records sent, 1379815.8 records/sec (6.58 MB/sec), 0.8 ms avg latency, 25.0 max latency.
6449673 records sent, 1289934.6 records/sec (6.15 MB/sec), 12.7 ms avg latency, 658.0 max latency.
7004782 records sent, 1400956.4 records/sec (6.68 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7392450 records sent, 1478490.0 records/sec (7.05 MB/sec), 0.9 ms avg latency, 34.0 max latency.
7204385 records sent, 1440877.0 records/sec (6.87 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7031634 records sent, 1406326.8 records/sec (6.71 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7171592 records sent, 1430598.8 records/sec (6.82 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7231797 records sent, 1446070.2 records/sec (6.90 MB/sec), 0.6 ms avg latency, 22.0 max latency.
7163839 records sent, 1432767.8 records/sec (6.83 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7170292 records sent, 1434058.4 records/sec (6.84 MB/sec), 0.7 ms avg latency, 24.0 max latency.
7181977 records sent, 1436108.2 records/sec (6.85 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7191199 records sent, 1438239.8 records/sec (6.86 MB/sec), 0.8 ms avg latency, 25.0 max latency.
6998363 records sent, 1399672.6 records/sec (6.67 MB/sec), 1.2 ms avg latency, 89.0 max latency.
7035887 records sent, 1407177.4 records/sec (6.71 MB/sec), 0.6 ms avg latency, 21.0 max latency.
6649772 records sent, 1329954.4 records/sec (6.34 MB/sec), 0.7 ms avg latency, 34.0 max latency.
7231839 records sent, 1443480.8 records/sec (6.88 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7365575 records sent, 1473115.0 records/sec (7.02 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7203968 records sent, 1440793.6 records/sec (6.87 MB/sec), 0.9 ms avg latency, 82.0 max latency.
7268708 records sent, 1453741.6 records/sec (6.93 MB/sec), 1.2 ms avg latency, 95.0 max latency.
7305881 records sent, 1461176.2 records/sec (6.97 MB/sec), 0.7 ms avg latency, 22.0 max latency.
7281700 records sent, 1456340.0 records/sec (6.94 MB/sec), 0.6 ms avg latency, 22.0 max latency.
7272838 records sent, 1454567.6 records/sec (6.94 MB/sec), 0.8 ms avg latency, 26.0 max latency.
6851834 records sent, 1370366.8 records/sec (6.53 MB/sec), 0.7 ms avg latency, 25.0 max latency.
7109050 records sent, 1421810.0 records/sec (6.78 MB/sec), 1.0 ms avg latency, 82.0 max latency.
6845520 records sent, 1369104.0 records/sec (6.53 MB/sec), 0.8 ms avg latency, 71.0 max latency.
7291492 records sent, 1458298.4 records/sec (6.95 MB/sec), 0.7 ms avg latency, 21.0 max latency.
7380613 records sent, 1476122.6 records/sec (7.04 MB/sec), 0.7 ms avg latency, 30.0 max latency.
7252307 records sent, 1450461.4 records/sec (6.92 MB/sec), 0.7 ms avg latency, 25.0 max latency.
7282354 records sent, 1456470.8 records/sec (6.94 MB/sec), 0.7 ms avg latency, 20.0 max latency.
7131624 records sent, 1426324.8 records/sec (6.80 MB/sec), 0.8 ms avg latency, 22.0 max latency.
7355507 records sent, 1471101.4 records/sec (7.01 MB/sec), 1.1 ms avg latency, 95.0 max latency.
500000000 records sent, 1352060.269439 records/sec (6.45 MB/sec), 0.96 ms avg latency, 658.00 ms max latency, 1 ms 50th, 1 ms 95th, 3 ms 99th, 47 ms 99.9th.
```
--------------------------------------------------------------------------------------------------------

## Single producer with Async Replication = 3 

## 10 mil (5KB Payload)

```
With PX replication factor = 2 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px --num-records 10000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
1688286 records sent, 337657.2 records/sec (1.61 MB/sec), 13.2 ms avg latency, 313.0 max latency.
4159312 records sent, 831862.4 records/sec (3.97 MB/sec), 8.7 ms avg latency, 161.0 max latency.
10000000 records sent, 690989.496960 records/sec (3.29 MB/sec), 9.50 ms avg latency, 313.00 ms max latency, 1 ms 50th, 65 ms 95th, 126 ms 99th, 162 ms 99.9th.
```

## 200 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1608344 records sent, 309059.2 records/sec (1.47 MB/sec), 20.7 ms avg latency, 262.0 max latency.
1874780 records sent, 374282.3 records/sec (1.78 MB/sec), 12.3 ms avg latency, 240.0 max latency.
1183119 records sent, 235352.9 records/sec (1.12 MB/sec), 10.0 ms avg latency, 233.0 max latency.
1532740 records sent, 299831.8 records/sec (1.43 MB/sec), 8.3 ms avg latency, 217.0 max latency.
2320361 records sent, 461671.5 records/sec (2.20 MB/sec), 7.8 ms avg latency, 198.0 max latency.
2311424 records sent, 457074.2 records/sec (2.18 MB/sec), 6.6 ms avg latency, 229.0 max latency.
1720100 records sent, 342512.9 records/sec (1.63 MB/sec), 63.6 ms avg latency, 874.0 max latency.
1432267 records sent, 284575.2 records/sec (1.36 MB/sec), 14.0 ms avg latency, 358.0 max latency.
1432372 records sent, 286474.4 records/sec (1.37 MB/sec), 9.8 ms avg latency, 198.0 max latency.
1421794 records sent, 280654.2 records/sec (1.34 MB/sec), 9.8 ms avg latency, 208.0 max latency.
2300169 records sent, 460033.8 records/sec (2.19 MB/sec), 11.8 ms avg latency, 230.0 max latency.
1787842 records sent, 357568.4 records/sec (1.71 MB/sec), 9.0 ms avg latency, 181.0 max latency.
1609728 records sent, 320662.9 records/sec (1.53 MB/sec), 9.4 ms avg latency, 199.0 max latency.
1201159 records sent, 238419.8 records/sec (1.14 MB/sec), 11.4 ms avg latency, 251.0 max latency.
1738099 records sent, 344655.8 records/sec (1.64 MB/sec), 16.3 ms avg latency, 257.0 max latency.
1844743 records sent, 368874.8 records/sec (1.76 MB/sec), 17.5 ms avg latency, 254.0 max latency.
1293152 records sent, 255513.1 records/sec (1.22 MB/sec), 11.6 ms avg latency, 169.0 max latency.
2655474 records sent, 528032.2 records/sec (2.52 MB/sec), 7.9 ms avg latency, 189.0 max latency.
3001271 records sent, 600254.2 records/sec (2.86 MB/sec), 9.0 ms avg latency, 192.0 max latency.
1855124 records sent, 369767.6 records/sec (1.76 MB/sec), 8.4 ms avg latency, 181.0 max latency.
1320398 records sent, 262609.0 records/sec (1.25 MB/sec), 10.2 ms avg latency, 190.0 max latency.
1199201 records sent, 239840.2 records/sec (1.14 MB/sec), 9.8 ms avg latency, 232.0 max latency.
1373795 records sent, 269160.5 records/sec (1.28 MB/sec), 10.2 ms avg latency, 203.0 max latency.
2303572 records sent, 454622.5 records/sec (2.17 MB/sec), 7.2 ms avg latency, 167.0 max latency.
1818335 records sent, 362218.1 records/sec (1.73 MB/sec), 7.3 ms avg latency, 229.0 max latency.
2047770 records sent, 405258.3 records/sec (1.93 MB/sec), 7.9 ms avg latency, 218.0 max latency.
1864608 records sent, 372921.6 records/sec (1.78 MB/sec), 24.6 ms avg latency, 693.0 max latency.
1332317 records sent, 264979.5 records/sec (1.26 MB/sec), 30.4 ms avg latency, 635.0 max latency.
1277883 records sent, 255219.3 records/sec (1.22 MB/sec), 18.2 ms avg latency, 492.0 max latency.
1840478 records sent, 368095.6 records/sec (1.76 MB/sec), 7.4 ms avg latency, 174.0 max latency.
1675184 records sent, 335036.8 records/sec (1.60 MB/sec), 7.1 ms avg latency, 205.0 max latency.
3873873 records sent, 774774.6 records/sec (3.69 MB/sec), 3.2 ms avg latency, 162.0 max latency.
2593646 records sent, 518729.2 records/sec (2.47 MB/sec), 4.2 ms avg latency, 168.0 max latency.
2257174 records sent, 451434.8 records/sec (2.15 MB/sec), 53.1 ms avg latency, 877.0 max latency.
2486068 records sent, 486796.2 records/sec (2.32 MB/sec), 3.7 ms avg latency, 189.0 max latency.
1666419 records sent, 333283.8 records/sec (1.59 MB/sec), 7.5 ms avg latency, 169.0 max latency.
1795328 records sent, 359065.6 records/sec (1.71 MB/sec), 5.2 ms avg latency, 217.0 max latency.
2007955 records sent, 401591.0 records/sec (1.91 MB/sec), 7.1 ms avg latency, 182.0 max latency.
2703900 records sent, 534790.3 records/sec (2.55 MB/sec), 9.1 ms avg latency, 272.0 max latency.
1960582 records sent, 386169.4 records/sec (1.84 MB/sec), 8.2 ms avg latency, 183.0 max latency.
1311751 records sent, 255701.9 records/sec (1.22 MB/sec), 9.5 ms avg latency, 188.0 max latency.
3251342 records sent, 645748.2 records/sec (3.08 MB/sec), 4.8 ms avg latency, 154.0 max latency.
1273440 records sent, 254027.5 records/sec (1.21 MB/sec), 10.8 ms avg latency, 247.0 max latency.
1371957 records sent, 273734.4 records/sec (1.31 MB/sec), 8.6 ms avg latency, 179.0 max latency.
2386274 records sent, 477254.8 records/sec (2.28 MB/sec), 5.5 ms avg latency, 193.0 max latency.
3725677 records sent, 744986.4 records/sec (3.55 MB/sec), 2.8 ms avg latency, 234.0 max latency.
1812755 records sent, 360890.9 records/sec (1.72 MB/sec), 6.3 ms avg latency, 183.0 max latency.
1399671 records sent, 278985.6 records/sec (1.33 MB/sec), 8.4 ms avg latency, 204.0 max latency.
1312895 records sent, 260753.7 records/sec (1.24 MB/sec), 8.3 ms avg latency, 178.0 max latency.
1982059 records sent, 392875.9 records/sec (1.87 MB/sec), 6.8 ms avg latency, 140.0 max latency.
1388024 records sent, 277604.8 records/sec (1.32 MB/sec), 10.9 ms avg latency, 208.0 max latency.
1725238 records sent, 341360.9 records/sec (1.63 MB/sec), 7.0 ms avg latency, 203.0 max latency.
2258261 records sent, 451652.2 records/sec (2.15 MB/sec), 5.9 ms avg latency, 150.0 max latency.
2777665 records sent, 552000.2 records/sec (2.63 MB/sec), 5.4 ms avg latency, 211.0 max latency.
1839143 records sent, 358717.2 records/sec (1.71 MB/sec), 9.9 ms avg latency, 242.0 max latency.
1407403 records sent, 280303.3 records/sec (1.34 MB/sec), 9.4 ms avg latency, 269.0 max latency.
3791609 records sent, 739105.1 records/sec (3.52 MB/sec), 6.1 ms avg latency, 167.0 max latency.
3065804 records sent, 606249.6 records/sec (2.89 MB/sec), 4.0 ms avg latency, 205.0 max latency.
3226107 records sent, 640354.7 records/sec (3.05 MB/sec), 4.4 ms avg latency, 137.0 max latency.
2190780 records sent, 437630.8 records/sec (2.09 MB/sec), 5.2 ms avg latency, 208.0 max latency.
3558818 records sent, 705275.1 records/sec (3.36 MB/sec), 3.5 ms avg latency, 182.0 max latency.
2217450 records sent, 442604.8 records/sec (2.11 MB/sec), 4.3 ms avg latency, 219.0 max latency.
1881593 records sent, 376318.6 records/sec (1.79 MB/sec), 6.5 ms avg latency, 228.0 max latency.
1490285 records sent, 286593.3 records/sec (1.37 MB/sec), 7.5 ms avg latency, 206.0 max latency.
1375803 records sent, 270083.0 records/sec (1.29 MB/sec), 9.3 ms avg latency, 208.0 max latency.
1390498 records sent, 278099.6 records/sec (1.33 MB/sec), 8.6 ms avg latency, 216.0 max latency.
2061090 records sent, 401380.7 records/sec (1.91 MB/sec), 6.5 ms avg latency, 185.0 max latency.
2114932 records sent, 417228.6 records/sec (1.99 MB/sec), 6.8 ms avg latency, 173.0 max latency.
1985866 records sent, 397173.2 records/sec (1.89 MB/sec), 7.1 ms avg latency, 161.0 max latency.
2883359 records sent, 575980.6 records/sec (2.75 MB/sec), 3.7 ms avg latency, 158.0 max latency.
1445073 records sent, 288495.3 records/sec (1.38 MB/sec), 7.7 ms avg latency, 151.0 max latency.
3108317 records sent, 618447.5 records/sec (2.95 MB/sec), 4.9 ms avg latency, 130.0 max latency.
1992158 records sent, 396844.2 records/sec (1.89 MB/sec), 6.6 ms avg latency, 171.0 max latency.
2080300 records sent, 413990.0 records/sec (1.97 MB/sec), 7.8 ms avg latency, 166.0 max latency.
2826100 records sent, 561737.2 records/sec (2.68 MB/sec), 5.4 ms avg latency, 284.0 max latency.
2064391 records sent, 412878.2 records/sec (1.97 MB/sec), 5.8 ms avg latency, 196.0 max latency.
2623782 records sent, 522041.8 records/sec (2.49 MB/sec), 5.8 ms avg latency, 199.0 max latency.
1487806 records sent, 297561.2 records/sec (1.42 MB/sec), 7.9 ms avg latency, 232.0 max latency.
3443492 records sent, 685408.4 records/sec (3.27 MB/sec), 3.1 ms avg latency, 146.0 max latency.
2539304 records sent, 501244.4 records/sec (2.39 MB/sec), 4.3 ms avg latency, 202.0 max latency.
1968111 records sent, 393622.2 records/sec (1.88 MB/sec), 6.1 ms avg latency, 149.0 max latency.
3188324 records sent, 631351.3 records/sec (3.01 MB/sec), 7.5 ms avg latency, 195.0 max latency.
1495691 records sent, 299138.2 records/sec (1.43 MB/sec), 9.3 ms avg latency, 212.0 max latency.
1986759 records sent, 396637.9 records/sec (1.89 MB/sec), 7.8 ms avg latency, 182.0 max latency.
2369498 records sent, 473899.6 records/sec (2.26 MB/sec), 5.6 ms avg latency, 172.0 max latency.
2850632 records sent, 568194.5 records/sec (2.71 MB/sec), 5.9 ms avg latency, 156.0 max latency.
3739746 records sent, 747949.2 records/sec (3.57 MB/sec), 5.0 ms avg latency, 203.0 max latency.
1624942 records sent, 322345.2 records/sec (1.54 MB/sec), 7.4 ms avg latency, 173.0 max latency.
1382330 records sent, 274380.7 records/sec (1.31 MB/sec), 9.4 ms avg latency, 183.0 max latency.
1766298 records sent, 349623.5 records/sec (1.67 MB/sec), 7.0 ms avg latency, 187.0 max latency.
1338086 records sent, 265809.7 records/sec (1.27 MB/sec), 8.4 ms avg latency, 174.0 max latency.
1464489 records sent, 289940.4 records/sec (1.38 MB/sec), 8.7 ms avg latency, 143.0 max latency.
1447359 records sent, 289471.8 records/sec (1.38 MB/sec), 9.5 ms avg latency, 210.0 max latency.
3089263 records sent, 611130.2 records/sec (2.91 MB/sec), 5.9 ms avg latency, 159.0 max latency.
1356241 records sent, 271248.2 records/sec (1.29 MB/sec), 9.3 ms avg latency, 183.0 max latency.
1376570 records sent, 275314.0 records/sec (1.31 MB/sec), 9.4 ms avg latency, 272.0 max latency.
1391597 records sent, 271319.4 records/sec (1.29 MB/sec), 8.3 ms avg latency, 188.0 max latency.
1316244 records sent, 262828.3 records/sec (1.25 MB/sec), 8.6 ms avg latency, 174.0 max latency.
200000000 records sent, 401342.893321 records/sec (1.91 MB/sec), 8.63 ms avg latency, 877.00 ms max latency, 2 ms 50th, 51 ms 95th, 130 ms 99th, 549 ms 99.9th.
```

## 500 mil (5KB Payload)

```
With PX replication factor = 2 (io_profile="db")

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

1506410 records sent, 301282.0 records/sec (1.44 MB/sec), 19.3 ms avg latency, 319.0 max latency.
1342652 records sent, 268530.4 records/sec (1.28 MB/sec), 12.2 ms avg latency, 216.0 max latency.
1151735 records sent, 229566.5 records/sec (1.09 MB/sec), 12.1 ms avg latency, 201.0 max latency.
1258326 records sent, 251665.2 records/sec (1.20 MB/sec), 15.6 ms avg latency, 208.0 max latency.
1374763 records sent, 273095.6 records/sec (1.30 MB/sec), 13.2 ms avg latency, 223.0 max latency.
1292169 records sent, 257969.5 records/sec (1.23 MB/sec), 11.2 ms avg latency, 229.0 max latency.
1708774 records sent, 340732.6 records/sec (1.62 MB/sec), 11.0 ms avg latency, 228.0 max latency.
1285050 records sent, 257010.0 records/sec (1.23 MB/sec), 14.4 ms avg latency, 226.0 max latency.
2057425 records sent, 411485.0 records/sec (1.96 MB/sec), 13.4 ms avg latency, 172.0 max latency.
1959901 records sent, 386720.8 records/sec (1.84 MB/sec), 11.5 ms avg latency, 242.0 max latency.
1868404 records sent, 367290.0 records/sec (1.75 MB/sec), 9.6 ms avg latency, 207.0 max latency.
1635899 records sent, 327179.8 records/sec (1.56 MB/sec), 12.9 ms avg latency, 209.0 max latency.
2754691 records sent, 546891.2 records/sec (2.61 MB/sec), 16.3 ms avg latency, 361.0 max latency.
1695724 records sent, 336186.4 records/sec (1.60 MB/sec), 14.0 ms avg latency, 196.0 max latency.
1207639 records sent, 241527.8 records/sec (1.15 MB/sec), 11.6 ms avg latency, 230.0 max latency.
1314099 records sent, 261564.3 records/sec (1.25 MB/sec), 15.1 ms avg latency, 156.0 max latency.
2461485 records sent, 490922.4 records/sec (2.34 MB/sec), 6.1 ms avg latency, 176.0 max latency.
1925387 records sent, 379536.2 records/sec (1.81 MB/sec), 87.4 ms avg latency, 962.0 max latency.
2739134 records sent, 547826.8 records/sec (2.61 MB/sec), 64.6 ms avg latency, 1006.0 max latency.
3301994 records sent, 641537.6 records/sec (3.06 MB/sec), 34.9 ms avg latency, 908.0 max latency.
3870846 records sent, 774169.2 records/sec (3.69 MB/sec), 6.6 ms avg latency, 204.0 max latency.
5011410 records sent, 995314.8 records/sec (4.75 MB/sec), 12.9 ms avg latency, 338.0 max latency.
4451714 records sent, 888211.1 records/sec (4.24 MB/sec), 7.2 ms avg latency, 151.0 max latency.
4168534 records sent, 833706.8 records/sec (3.98 MB/sec), 4.5 ms avg latency, 127.0 max latency.
2321274 records sent, 455598.4 records/sec (2.17 MB/sec), 13.0 ms avg latency, 185.0 max latency.
2891118 records sent, 578223.6 records/sec (2.76 MB/sec), 11.7 ms avg latency, 176.0 max latency.
5094634 records sent, 1018926.8 records/sec (4.86 MB/sec), 3.4 ms avg latency, 126.0 max latency.
2575610 records sent, 514813.1 records/sec (2.45 MB/sec), 5.3 ms avg latency, 195.0 max latency.
5140821 records sent, 1026316.8 records/sec (4.89 MB/sec), 2.0 ms avg latency, 116.0 max latency.
3964514 records sent, 788173.8 records/sec (3.76 MB/sec), 3.5 ms avg latency, 128.0 max latency.
2645657 records sent, 523477.8 records/sec (2.50 MB/sec), 17.3 ms avg latency, 165.0 max latency.
3534290 records sent, 706858.0 records/sec (3.37 MB/sec), 9.3 ms avg latency, 156.0 max latency.
4984649 records sent, 984136.0 records/sec (4.69 MB/sec), 6.0 ms avg latency, 173.0 max latency.
4543349 records sent, 902711.9 records/sec (4.30 MB/sec), 5.1 ms avg latency, 124.0 max latency.
3568919 records sent, 713783.8 records/sec (3.40 MB/sec), 8.3 ms avg latency, 149.0 max latency.
4440593 records sent, 888118.6 records/sec (4.23 MB/sec), 7.8 ms avg latency, 109.0 max latency.
3772806 records sent, 754561.2 records/sec (3.60 MB/sec), 9.9 ms avg latency, 158.0 max latency.
4226631 records sent, 845326.2 records/sec (4.03 MB/sec), 5.6 ms avg latency, 228.0 max latency.
4901846 records sent, 967406.0 records/sec (4.61 MB/sec), 3.0 ms avg latency, 177.0 max latency.
4018354 records sent, 803670.8 records/sec (3.83 MB/sec), 5.9 ms avg latency, 125.0 max latency.
4682619 records sent, 936523.8 records/sec (4.47 MB/sec), 7.4 ms avg latency, 133.0 max latency.
3281762 records sent, 654258.8 records/sec (3.12 MB/sec), 6.7 ms avg latency, 185.0 max latency.
4241680 records sent, 848336.0 records/sec (4.05 MB/sec), 14.7 ms avg latency, 207.0 max latency.
2117046 records sent, 423409.2 records/sec (2.02 MB/sec), 12.0 ms avg latency, 197.0 max latency.
3191469 records sent, 629605.2 records/sec (3.00 MB/sec), 9.2 ms avg latency, 338.0 max latency.
3520369 records sent, 703511.0 records/sec (3.35 MB/sec), 9.6 ms avg latency, 211.0 max latency.
2237570 records sent, 447514.0 records/sec (2.13 MB/sec), 24.0 ms avg latency, 617.0 max latency.
5466700 records sent, 1093340.0 records/sec (5.21 MB/sec), 1.8 ms avg latency, 156.0 max latency.
3969727 records sent, 793945.4 records/sec (3.79 MB/sec), 5.3 ms avg latency, 208.0 max latency.
4710107 records sent, 942021.4 records/sec (4.49 MB/sec), 11.7 ms avg latency, 260.0 max latency.
2506789 records sent, 497477.5 records/sec (2.37 MB/sec), 182.0 ms avg latency, 3104.0 max latency.
1976981 records sent, 392336.0 records/sec (1.87 MB/sec), 652.5 ms avg latency, 3124.0 max latency.
5514832 records sent, 1102966.4 records/sec (5.26 MB/sec), 5.0 ms avg latency, 176.0 max latency.
4815106 records sent, 963021.2 records/sec (4.59 MB/sec), 1.9 ms avg latency, 149.0 max latency.
3757790 records sent, 748265.6 records/sec (3.57 MB/sec), 4.8 ms avg latency, 199.0 max latency.
4285908 records sent, 857181.6 records/sec (4.09 MB/sec), 12.5 ms avg latency, 239.0 max latency.
2927408 records sent, 585481.6 records/sec (2.79 MB/sec), 13.1 ms avg latency, 273.0 max latency.
3662463 records sent, 732346.1 records/sec (3.49 MB/sec), 5.4 ms avg latency, 155.0 max latency.
4270776 records sent, 854155.2 records/sec (4.07 MB/sec), 4.2 ms avg latency, 155.0 max latency.
4743809 records sent, 942541.0 records/sec (4.49 MB/sec), 2.0 ms avg latency, 217.0 max latency.
4066961 records sent, 811606.7 records/sec (3.87 MB/sec), 3.5 ms avg latency, 129.0 max latency.
3806278 records sent, 758373.8 records/sec (3.62 MB/sec), 8.3 ms avg latency, 155.0 max latency.
3261825 records sent, 652365.0 records/sec (3.11 MB/sec), 8.7 ms avg latency, 157.0 max latency.
5464945 records sent, 1088851.4 records/sec (5.19 MB/sec), 2.9 ms avg latency, 87.0 max latency.
4086442 records sent, 787216.7 records/sec (3.75 MB/sec), 2.8 ms avg latency, 194.0 max latency.
5450753 records sent, 1090150.6 records/sec (5.20 MB/sec), 2.5 ms avg latency, 200.0 max latency.
3099786 records sent, 619957.2 records/sec (2.96 MB/sec), 17.1 ms avg latency, 276.0 max latency.
2798250 records sent, 558644.4 records/sec (2.66 MB/sec), 12.9 ms avg latency, 167.0 max latency.
3889094 records sent, 777818.8 records/sec (3.71 MB/sec), 4.8 ms avg latency, 182.0 max latency.
5302870 records sent, 1060574.0 records/sec (5.06 MB/sec), 4.3 ms avg latency, 226.0 max latency.
3933683 records sent, 781888.9 records/sec (3.73 MB/sec), 2.4 ms avg latency, 141.0 max latency.
2064676 records sent, 412935.2 records/sec (1.97 MB/sec), 10.7 ms avg latency, 226.0 max latency.
3689155 records sent, 737683.5 records/sec (3.52 MB/sec), 23.9 ms avg latency, 254.0 max latency.
3407430 records sent, 678906.2 records/sec (3.24 MB/sec), 17.0 ms avg latency, 421.0 max latency.
1982644 records sent, 393225.7 records/sec (1.88 MB/sec), 26.4 ms avg latency, 442.0 max latency.
3775192 records sent, 755038.4 records/sec (3.60 MB/sec), 7.8 ms avg latency, 248.0 max latency.
4190360 records sent, 838072.0 records/sec (4.00 MB/sec), 4.8 ms avg latency, 150.0 max latency.
5611670 records sent, 1122334.0 records/sec (5.35 MB/sec), 4.0 ms avg latency, 114.0 max latency.
3821512 records sent, 762776.8 records/sec (3.64 MB/sec), 5.4 ms avg latency, 197.0 max latency.
2932031 records sent, 586406.2 records/sec (2.80 MB/sec), 8.9 ms avg latency, 129.0 max latency.
4047323 records sent, 809464.6 records/sec (3.86 MB/sec), 11.3 ms avg latency, 222.0 max latency.
5634197 records sent, 1126839.4 records/sec (5.37 MB/sec), 5.1 ms avg latency, 168.0 max latency.
3228544 records sent, 639695.7 records/sec (3.05 MB/sec), 7.7 ms avg latency, 244.0 max latency.
4370931 records sent, 872093.2 records/sec (4.16 MB/sec), 10.2 ms avg latency, 356.0 max latency.
4214497 records sent, 842899.4 records/sec (4.02 MB/sec), 9.8 ms avg latency, 175.0 max latency.
2903999 records sent, 580799.8 records/sec (2.77 MB/sec), 6.8 ms avg latency, 175.0 max latency.
3035377 records sent, 607075.4 records/sec (2.89 MB/sec), 5.0 ms avg latency, 272.0 max latency.
5554620 records sent, 1110924.0 records/sec (5.30 MB/sec), 2.3 ms avg latency, 119.0 max latency.
5984775 records sent, 1196955.0 records/sec (5.71 MB/sec), 6.3 ms avg latency, 174.0 max latency.
3441414 records sent, 688282.8 records/sec (3.28 MB/sec), 10.1 ms avg latency, 134.0 max latency.
4515427 records sent, 903085.4 records/sec (4.31 MB/sec), 10.4 ms avg latency, 132.0 max latency.
4431072 records sent, 886037.2 records/sec (4.22 MB/sec), 11.8 ms avg latency, 349.0 max latency.
4708190 records sent, 941638.0 records/sec (4.49 MB/sec), 6.0 ms avg latency, 147.0 max latency.
3622044 records sent, 723685.1 records/sec (3.45 MB/sec), 7.5 ms avg latency, 146.0 max latency.
3178920 records sent, 635784.0 records/sec (3.03 MB/sec), 8.3 ms avg latency, 188.0 max latency.
1960841 records sent, 392168.2 records/sec (1.87 MB/sec), 161.8 ms avg latency, 991.0 max latency.
3914525 records sent, 782905.0 records/sec (3.73 MB/sec), 7.4 ms avg latency, 188.0 max latency.
2401254 records sent, 480250.8 records/sec (2.29 MB/sec), 4.3 ms avg latency, 167.0 max latency.
3021759 records sent, 602424.0 records/sec (2.87 MB/sec), 5.5 ms avg latency, 166.0 max latency.
4560917 records sent, 911818.7 records/sec (4.35 MB/sec), 4.3 ms avg latency, 163.0 max latency.
2643555 records sent, 526814.5 records/sec (2.51 MB/sec), 19.0 ms avg latency, 240.0 max latency.
3839496 records sent, 767899.2 records/sec (3.66 MB/sec), 5.2 ms avg latency, 174.0 max latency.
4841460 records sent, 968292.0 records/sec (4.62 MB/sec), 8.8 ms avg latency, 245.0 max latency.
2404228 records sent, 477597.9 records/sec (2.28 MB/sec), 7.4 ms avg latency, 219.0 max latency.
3624920 records sent, 724984.0 records/sec (3.46 MB/sec), 12.6 ms avg latency, 232.0 max latency.
5117403 records sent, 1020215.9 records/sec (4.86 MB/sec), 3.4 ms avg latency, 125.0 max latency.
6151314 records sent, 1230262.8 records/sec (5.87 MB/sec), 1.4 ms avg latency, 79.0 max latency.
4321843 records sent, 864368.6 records/sec (4.12 MB/sec), 4.3 ms avg latency, 128.0 max latency.
3601957 records sent, 720391.4 records/sec (3.44 MB/sec), 7.5 ms avg latency, 130.0 max latency.
3978663 records sent, 793036.3 records/sec (3.78 MB/sec), 6.7 ms avg latency, 120.0 max latency.
4522022 records sent, 904404.4 records/sec (4.31 MB/sec), 10.7 ms avg latency, 145.0 max latency.
4864153 records sent, 972830.6 records/sec (4.64 MB/sec), 10.1 ms avg latency, 204.0 max latency.
4442500 records sent, 888500.0 records/sec (4.24 MB/sec), 9.3 ms avg latency, 199.0 max latency.
4713705 records sent, 940483.8 records/sec (4.48 MB/sec), 8.4 ms avg latency, 128.0 max latency.
2585576 records sent, 517115.2 records/sec (2.47 MB/sec), 7.9 ms avg latency, 151.0 max latency.
1837554 records sent, 367510.8 records/sec (1.75 MB/sec), 13.0 ms avg latency, 314.0 max latency.
2994660 records sent, 598932.0 records/sec (2.86 MB/sec), 4.1 ms avg latency, 167.0 max latency.
3606477 records sent, 721295.4 records/sec (3.44 MB/sec), 4.0 ms avg latency, 152.0 max latency.
3245959 records sent, 649191.8 records/sec (3.10 MB/sec), 5.4 ms avg latency, 135.0 max latency.
3678912 records sent, 732413.3 records/sec (3.49 MB/sec), 4.2 ms avg latency, 186.0 max latency.
4539370 records sent, 907874.0 records/sec (4.33 MB/sec), 4.6 ms avg latency, 200.0 max latency.
4095001 records sent, 819000.2 records/sec (3.91 MB/sec), 2.9 ms avg latency, 156.0 max latency.
2326551 records sent, 461342.7 records/sec (2.20 MB/sec), 10.3 ms avg latency, 164.0 max latency.
2936536 records sent, 587307.2 records/sec (2.80 MB/sec), 5.1 ms avg latency, 140.0 max latency.
4784474 records sent, 956894.8 records/sec (4.56 MB/sec), 4.7 ms avg latency, 133.0 max latency.
5013822 records sent, 1002764.4 records/sec (4.78 MB/sec), 3.5 ms avg latency, 127.0 max latency.
4502617 records sent, 897829.9 records/sec (4.28 MB/sec), 4.0 ms avg latency, 214.0 max latency.
3834791 records sent, 766958.2 records/sec (3.66 MB/sec), 6.5 ms avg latency, 167.0 max latency.
4333858 records sent, 864351.4 records/sec (4.12 MB/sec), 15.6 ms avg latency, 800.0 max latency.
4235263 records sent, 847052.6 records/sec (4.04 MB/sec), 3.7 ms avg latency, 141.0 max latency.
3860492 records sent, 772098.4 records/sec (3.68 MB/sec), 6.5 ms avg latency, 210.0 max latency.
3065653 records sent, 613130.6 records/sec (2.92 MB/sec), 7.5 ms avg latency, 204.0 max latency.
3587109 records sent, 716561.9 records/sec (3.42 MB/sec), 5.6 ms avg latency, 259.0 max latency.
3856462 records sent, 771292.4 records/sec (3.68 MB/sec), 5.6 ms avg latency, 208.0 max latency.
4809581 records sent, 961531.6 records/sec (4.58 MB/sec), 3.8 ms avg latency, 116.0 max latency.
2872122 records sent, 574424.4 records/sec (2.74 MB/sec), 21.5 ms avg latency, 130.0 max latency.
3462853 records sent, 692570.6 records/sec (3.30 MB/sec), 11.7 ms avg latency, 194.0 max latency.
4270657 records sent, 854131.4 records/sec (4.07 MB/sec), 10.6 ms avg latency, 139.0 max latency.
2941919 records sent, 588266.1 records/sec (2.81 MB/sec), 21.7 ms avg latency, 250.0 max latency.
500000000 records sent, 713617.971755 records/sec (3.40 MB/sec), 12.51 ms avg latency, 3124.00 ms max latency, 1 ms 50th, 48 ms 95th, 153 ms 99th, 1311 ms 99.9th.

bin/kafka-topics.sh --describe --zookeeper zk-headless.kafka.svc.cluster.local:2181 --topic kbrep3-topic-px

Topic:kbrep3-topic-px	PartitionCount:3	ReplicationFactor:3	Configs:
	Topic: kbrep3-topic-px	Partition: 0	Leader: 1001	Replicas: 1001,1002,1003	Isr: 1001,1002,1003
	Topic: kbrep3-topic-px	Partition: 1	Leader: 1002	Replicas: 1002,1003,1001	Isr: 1002,1003,1001
	Topic: kbrep3-topic-px	Partition: 2	Leader: 1003	Replicas: 1003,1001,1002	Isr: 1003,1001,1002

bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 --topic kbrep3-topic-px --time -1

kbrep3-topic-px:2:166666666
kbrep3-topic-px:1:166666667
kbrep3-topic-px:0:166666667

Cordon all the nodes where the Kafka pod could get rescheduled. 

kubectl get nodes -o wide
NAME                           STATUS                     AGE       VERSION   EXTERNAL-IP   OS-IMAGE                KERNEL-VERSION
pdc3-sm16                      Ready,SchedulingDisabled   12d       v1.7.2    <none>        CentOS Linux 7 (Core)   3.10.0-514.el7.x86_64
pdc3-sm18                      Ready,SchedulingDisabled   12d       v1.7.2    <none>        CentOS Linux 7 (Core)   3.10.0-327.el7.x86_64
pdc3-sm19                      Ready,SchedulingDisabled   37d       v1.7.2    <none>        CentOS Linux 7 (Core)   3.10.0-327.el7.x86_64


```