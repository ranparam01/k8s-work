# Kafka benchmarking results

## Single Producer, no replication with PX 

### 25 mil (5KB Payload)
```

With PX Replication = 3 
-------------------------------------
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


With PX Replication = 1 (io_profile="db")
-------------------------------------
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
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5401275 records sent, 1080255.0 records/sec (5.15 MB/sec), 2.0 ms avg latency, 212.0 max latency.
6323585 records sent, 1264717.0 records/sec (6.03 MB/sec), 1.2 ms avg latency, 33.0 max latency.
6351348 records sent, 1270269.6 records/sec (6.06 MB/sec), 1.0 ms avg latency, 26.0 max latency.
6044584 records sent, 1208916.8 records/sec (5.76 MB/sec), 0.9 ms avg latency, 26.0 max latency.
25000000 records sent, 1201114.634381 records/sec (5.73 MB/sec), 1.24 ms avg latency, 212.00 ms max latency, 1 ms 50th, 2 ms 95th, 14 ms 99th, 26 ms 99.9th.
```

### 50 mil (5KB Payload)
```
With PX Replication = 3
-------------------------------------
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

With PX Replication = 1 (io_profile="db")
-------------------------------------
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
-------------------------------------
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

### 200 mil  (5KB Payload)
```
With PX replication = 3
-------------------------------------
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

With PX Replication = 1 (io_profile="db")
-------------------------------------
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
-------------------------------------
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

### 500 mil (5KB Payload)
```
With PX Replication = 3 
-------------------------------------
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

With PX replication = 1 (io_profile="db")
-------------------------------------
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
-------------------------------------
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

```
bin/kafka-topics.sh --zookeeper zk-headless.kafka.svc.cluster.local:2181 --create --if-not-exists --topic kbrep3-async-px2 --partitions 3 --replication-factor 3

bin/kafka-topics.sh --list --zookeeper zk-headless.kafka.svc.cluster.local:2181

bin/kafka-topics.sh --describe --zookeeper zk-headless.kafka.svc.cluster.local:2181 --topic kbrep3-async-px2 

bin/kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 --topic kbrep3-async-px2 --time -1

```

### 25 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep1-topic-px --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

6007801 records sent, 1201560.2 records/sec (5.73 MB/sec), 1.7 ms avg latency, 171.0 max latency.
6677421 records sent, 1335484.2 records/sec (6.37 MB/sec), 80.1 ms avg latency, 1449.0 max latency.
7337419 records sent, 1467483.8 records/sec (7.00 MB/sec), 1.7 ms avg latency, 25.0 max latency.
25000000 records sent, 1359582.336306 records/sec (6.48 MB/sec), 22.69 ms avg latency, 1449.00 ms max latency, 2 ms 50th, 6 ms 95th, 939 ms 99th, 1420 ms 99.9th.

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

5901857 records sent, 1180371.4 records/sec (5.63 MB/sec), 1.5 ms avg latency, 231.0 max latency.
6637897 records sent, 1327579.4 records/sec (6.33 MB/sec), 1.0 ms avg latency, 28.0 max latency.
7006020 records sent, 1401204.0 records/sec (6.68 MB/sec), 1.1 ms avg latency, 87.0 max latency.
25000000 records sent, 1337900.032110 records/sec (6.38 MB/sec), 1.12 ms avg latency, 231.00 ms max latency, 1 ms 50th, 2 ms 95th, 13 ms 99th, 36 ms 99.9th.

```

### 50 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

4415594 records sent, 883118.8 records/sec (4.21 MB/sec), 23.1 ms avg latency, 354.0 max latency.
7476880 records sent, 1495376.0 records/sec (7.13 MB/sec), 4.6 ms avg latency, 293.0 max latency.
6147405 records sent, 1229481.0 records/sec (5.86 MB/sec), 1.4 ms avg latency, 28.0 max latency.
7115994 records sent, 1423198.8 records/sec (6.79 MB/sec), 1.1 ms avg latency, 25.0 max latency.
6996300 records sent, 1399260.0 records/sec (6.67 MB/sec), 15.1 ms avg latency, 604.0 max latency.
7263614 records sent, 1452722.8 records/sec (6.93 MB/sec), 92.8 ms avg latency, 1077.0 max latency.
3716783 records sent, 743356.6 records/sec (3.54 MB/sec), 304.9 ms avg latency, 2485.0 max latency.
5826512 records sent, 1165302.4 records/sec (5.56 MB/sec), 639.7 ms avg latency, 2696.0 max latency.
50000000 records sent, 1229105.211406 records/sec (5.86 MB/sec), 115.89 ms avg latency, 2696.00 ms max latency, 1 ms 50th, 997 ms 95th, 2400 ms 99th, 2674 ms 99.9th.

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

5389640 records sent, 1077928.0 records/sec (5.14 MB/sec), 1.0 ms avg latency, 187.0 max latency.
6779122 records sent, 1355824.4 records/sec (6.47 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6985072 records sent, 1397014.4 records/sec (6.66 MB/sec), 1.0 ms avg latency, 27.0 max latency.
7076534 records sent, 1415306.8 records/sec (6.75 MB/sec), 1.1 ms avg latency, 27.0 max latency.
6997457 records sent, 1399491.4 records/sec (6.67 MB/sec), 0.9 ms avg latency, 30.0 max latency.
6550528 records sent, 1310105.6 records/sec (6.25 MB/sec), 16.6 ms avg latency, 788.0 max latency.
6803504 records sent, 1360700.8 records/sec (6.49 MB/sec), 0.9 ms avg latency, 23.0 max latency.
50000000 records sent, 1344266.702514 records/sec (6.41 MB/sec), 3.00 ms avg latency, 788.00 ms max latency, 1 ms 50th, 1 ms 95th, 15 ms 99th, 645 ms 99.9th.

```
### 200 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px2 --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

6509622 records sent, 1301924.4 records/sec (6.21 MB/sec), 2.2 ms avg latency, 151.0 max latency.
7775118 records sent, 1555023.6 records/sec (7.41 MB/sec), 1.1 ms avg latency, 21.0 max latency.
7437906 records sent, 1487581.2 records/sec (7.09 MB/sec), 1.8 ms avg latency, 33.0 max latency.
6563043 records sent, 1312608.6 records/sec (6.26 MB/sec), 13.7 ms avg latency, 231.0 max latency.
6761575 records sent, 1352315.0 records/sec (6.45 MB/sec), 12.4 ms avg latency, 286.0 max latency.
4943907 records sent, 988781.4 records/sec (4.71 MB/sec), 196.7 ms avg latency, 1419.0 max latency.
6885830 records sent, 1376340.2 records/sec (6.56 MB/sec), 14.4 ms avg latency, 346.0 max latency.
7747702 records sent, 1549540.4 records/sec (7.39 MB/sec), 1.0 ms avg latency, 19.0 max latency.
7654525 records sent, 1530905.0 records/sec (7.30 MB/sec), 2.0 ms avg latency, 25.0 max latency.
7009090 records sent, 1401818.0 records/sec (6.68 MB/sec), 19.2 ms avg latency, 257.0 max latency.
5517547 records sent, 1103509.4 records/sec (5.26 MB/sec), 230.0 ms avg latency, 1429.0 max latency.
5192176 records sent, 1038435.2 records/sec (4.95 MB/sec), 123.8 ms avg latency, 1601.0 max latency.
7642172 records sent, 1528434.4 records/sec (7.29 MB/sec), 3.3 ms avg latency, 170.0 max latency.
7418330 records sent, 1483666.0 records/sec (7.07 MB/sec), 1.5 ms avg latency, 32.0 max latency.
6864066 records sent, 1372813.2 records/sec (6.55 MB/sec), 5.9 ms avg latency, 113.0 max latency.
7040930 records sent, 1408186.0 records/sec (6.71 MB/sec), 6.5 ms avg latency, 70.0 max latency.
5113936 records sent, 1022787.2 records/sec (4.88 MB/sec), 45.6 ms avg latency, 1247.0 max latency.
5658988 records sent, 1131797.6 records/sec (5.40 MB/sec), 111.3 ms avg latency, 1418.0 max latency.
7171950 records sent, 1434390.0 records/sec (6.84 MB/sec), 2.0 ms avg latency, 22.0 max latency.
7493154 records sent, 1498630.8 records/sec (7.15 MB/sec), 1.6 ms avg latency, 57.0 max latency.
6852847 records sent, 1370569.4 records/sec (6.54 MB/sec), 28.0 ms avg latency, 411.0 max latency.
7156081 records sent, 1431216.2 records/sec (6.82 MB/sec), 13.1 ms avg latency, 168.0 max latency.
5620125 records sent, 1124025.0 records/sec (5.36 MB/sec), 48.8 ms avg latency, 1055.0 max latency.
6789566 records sent, 1356556.6 records/sec (6.47 MB/sec), 5.9 ms avg latency, 316.0 max latency.
5704369 records sent, 1140873.8 records/sec (5.44 MB/sec), 181.1 ms avg latency, 1107.0 max latency.
6600617 records sent, 1320123.4 records/sec (6.29 MB/sec), 185.5 ms avg latency, 1506.0 max latency.
5768911 records sent, 1153782.2 records/sec (5.50 MB/sec), 183.8 ms avg latency, 1692.0 max latency.
7491374 records sent, 1498274.8 records/sec (7.14 MB/sec), 1.2 ms avg latency, 22.0 max latency.
7629297 records sent, 1525859.4 records/sec (7.28 MB/sec), 1.1 ms avg latency, 27.0 max latency.
200000000 records sent, 1340752.161963 records/sec (6.39 MB/sec), 41.67 ms avg latency, 1692.00 ms max latency, 1 ms 50th, 200 ms 95th, 1071 ms 99th, 1493 ms 99.9th.

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

5821218 records sent, 1162615.9 records/sec (5.54 MB/sec), 0.9 ms avg latency, 195.0 max latency.
7373768 records sent, 1474753.6 records/sec (7.03 MB/sec), 0.9 ms avg latency, 27.0 max latency.
7000481 records sent, 1400096.2 records/sec (6.68 MB/sec), 0.8 ms avg latency, 25.0 max latency.
7466745 records sent, 1493349.0 records/sec (7.12 MB/sec), 3.0 ms avg latency, 333.0 max latency.
6869185 records sent, 1373837.0 records/sec (6.55 MB/sec), 2.7 ms avg latency, 207.0 max latency.
5585884 records sent, 1117176.8 records/sec (5.33 MB/sec), 9.2 ms avg latency, 106.0 max latency.
6624861 records sent, 1324972.2 records/sec (6.32 MB/sec), 0.8 ms avg latency, 22.0 max latency.
7029803 records sent, 1405960.6 records/sec (6.70 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6727832 records sent, 1345566.4 records/sec (6.42 MB/sec), 0.9 ms avg latency, 24.0 max latency.
6439066 records sent, 1287813.2 records/sec (6.14 MB/sec), 0.8 ms avg latency, 21.0 max latency.
5553758 records sent, 1110751.6 records/sec (5.30 MB/sec), 0.8 ms avg latency, 27.0 max latency.
7086796 records sent, 1417359.2 records/sec (6.76 MB/sec), 96.0 ms avg latency, 2068.0 max latency.
6508018 records sent, 1301603.6 records/sec (6.21 MB/sec), 0.8 ms avg latency, 20.0 max latency.
6540679 records sent, 1306046.1 records/sec (6.23 MB/sec), 0.9 ms avg latency, 32.0 max latency.
7217446 records sent, 1443489.2 records/sec (6.88 MB/sec), 1.0 ms avg latency, 25.0 max latency.
7348129 records sent, 1469625.8 records/sec (7.01 MB/sec), 0.9 ms avg latency, 28.0 max latency.
6199414 records sent, 1239882.8 records/sec (5.91 MB/sec), 38.0 ms avg latency, 1201.0 max latency.
6928499 records sent, 1385699.8 records/sec (6.61 MB/sec), 0.9 ms avg latency, 33.0 max latency.
7416204 records sent, 1483240.8 records/sec (7.07 MB/sec), 0.9 ms avg latency, 22.0 max latency.
6795418 records sent, 1357997.2 records/sec (6.48 MB/sec), 0.9 ms avg latency, 34.0 max latency.
6870164 records sent, 1374032.8 records/sec (6.55 MB/sec), 0.8 ms avg latency, 21.0 max latency.
7174925 records sent, 1434698.1 records/sec (6.84 MB/sec), 0.9 ms avg latency, 22.0 max latency.
7092995 records sent, 1418599.0 records/sec (6.76 MB/sec), 1.2 ms avg latency, 83.0 max latency.
7363866 records sent, 1472773.2 records/sec (7.02 MB/sec), 0.9 ms avg latency, 41.0 max latency.
7204412 records sent, 1440882.4 records/sec (6.87 MB/sec), 0.9 ms avg latency, 30.0 max latency.
7082758 records sent, 1416551.6 records/sec (6.75 MB/sec), 1.4 ms avg latency, 76.0 max latency.
6879922 records sent, 1375984.4 records/sec (6.56 MB/sec), 0.9 ms avg latency, 23.0 max latency.
7179637 records sent, 1435927.4 records/sec (6.85 MB/sec), 0.9 ms avg latency, 22.0 max latency.
6806632 records sent, 1361326.4 records/sec (6.49 MB/sec), 0.9 ms avg latency, 31.0 max latency.
200000000 records sent, 1365775.043193 records/sec (6.51 MB/sec), 5.80 ms avg latency, 2068.00 ms max latency, 1 ms 50th, 1 ms 95th, 27 ms 99th, 1535 ms 99.9th.

```

### 500 mil (5KB Payload)

```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-topic-px3 --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

5962618 records sent, 1192523.6 records/sec (5.69 MB/sec), 1.8 ms avg latency, 206.0 max latency.
7375407 records sent, 1475081.4 records/sec (7.03 MB/sec), 10.2 ms avg latency, 392.0 max latency.
7200739 records sent, 1440147.8 records/sec (6.87 MB/sec), 20.6 ms avg latency, 651.0 max latency.
7371952 records sent, 1474390.4 records/sec (7.03 MB/sec), 2.0 ms avg latency, 34.0 max latency.
7050227 records sent, 1410045.4 records/sec (6.72 MB/sec), 4.8 ms avg latency, 283.0 max latency.
6674522 records sent, 1334904.4 records/sec (6.37 MB/sec), 5.4 ms avg latency, 160.0 max latency.
6761586 records sent, 1352317.2 records/sec (6.45 MB/sec), 33.2 ms avg latency, 849.0 max latency.
7471172 records sent, 1494234.4 records/sec (7.13 MB/sec), 1.5 ms avg latency, 20.0 max latency.
6224896 records sent, 1244979.2 records/sec (5.94 MB/sec), 2.2 ms avg latency, 268.0 max latency.
6834069 records sent, 1366813.8 records/sec (6.52 MB/sec), 88.8 ms avg latency, 1454.0 max latency.
5977115 records sent, 1195423.0 records/sec (5.70 MB/sec), 121.0 ms avg latency, 1147.0 max latency.
7300497 records sent, 1460099.4 records/sec (6.96 MB/sec), 2.5 ms avg latency, 125.0 max latency.
7422077 records sent, 1484415.4 records/sec (7.08 MB/sec), 1.5 ms avg latency, 21.0 max latency.
7098134 records sent, 1419626.8 records/sec (6.77 MB/sec), 10.1 ms avg latency, 517.0 max latency.
7313449 records sent, 1462689.8 records/sec (6.97 MB/sec), 3.4 ms avg latency, 207.0 max latency.
6778252 records sent, 1355650.4 records/sec (6.46 MB/sec), 9.7 ms avg latency, 251.0 max latency.
5946042 records sent, 1189208.4 records/sec (5.67 MB/sec), 85.5 ms avg latency, 1310.0 max latency.
5913143 records sent, 1182628.6 records/sec (5.64 MB/sec), 69.3 ms avg latency, 831.0 max latency.
7414971 records sent, 1482994.2 records/sec (7.07 MB/sec), 6.0 ms avg latency, 199.0 max latency.
7462110 records sent, 1492422.0 records/sec (7.12 MB/sec), 1.4 ms avg latency, 31.0 max latency.
7481881 records sent, 1496376.2 records/sec (7.14 MB/sec), 1.6 ms avg latency, 42.0 max latency.
6561015 records sent, 1312203.0 records/sec (6.26 MB/sec), 39.3 ms avg latency, 1145.0 max latency.
6637744 records sent, 1327548.8 records/sec (6.33 MB/sec), 30.9 ms avg latency, 969.0 max latency.
5766070 records sent, 1153214.0 records/sec (5.50 MB/sec), 131.2 ms avg latency, 1065.0 max latency.
7027982 records sent, 1405596.4 records/sec (6.70 MB/sec), 48.2 ms avg latency, 602.0 max latency.
6794336 records sent, 1358867.2 records/sec (6.48 MB/sec), 38.2 ms avg latency, 817.0 max latency.
6798981 records sent, 1359796.2 records/sec (6.48 MB/sec), 37.5 ms avg latency, 1103.0 max latency.
7503110 records sent, 1500622.0 records/sec (7.16 MB/sec), 1.5 ms avg latency, 26.0 max latency.
7491878 records sent, 1498375.6 records/sec (7.14 MB/sec), 1.6 ms avg latency, 25.0 max latency.
7211540 records sent, 1442308.0 records/sec (6.88 MB/sec), 4.6 ms avg latency, 220.0 max latency.
6315678 records sent, 1263135.6 records/sec (6.02 MB/sec), 133.0 ms avg latency, 1252.0 max latency.
6331697 records sent, 1266339.4 records/sec (6.04 MB/sec), 92.4 ms avg latency, 1033.0 max latency.
6870221 records sent, 1374044.2 records/sec (6.55 MB/sec), 6.5 ms avg latency, 210.0 max latency.
7506911 records sent, 1501382.2 records/sec (7.16 MB/sec), 1.6 ms avg latency, 23.0 max latency.
7557651 records sent, 1511530.2 records/sec (7.21 MB/sec), 1.5 ms avg latency, 29.0 max latency.
7509732 records sent, 1501946.4 records/sec (7.16 MB/sec), 1.6 ms avg latency, 32.0 max latency.
6832312 records sent, 1363462.8 records/sec (6.50 MB/sec), 25.2 ms avg latency, 863.0 max latency.
6567883 records sent, 1313576.6 records/sec (6.26 MB/sec), 12.1 ms avg latency, 258.0 max latency.
6538757 records sent, 1307751.4 records/sec (6.24 MB/sec), 30.4 ms avg latency, 309.0 max latency.
7245749 records sent, 1449149.8 records/sec (6.91 MB/sec), 1.9 ms avg latency, 22.0 max latency.
6458394 records sent, 1290646.3 records/sec (6.15 MB/sec), 34.5 ms avg latency, 952.0 max latency.
6636313 records sent, 1327262.6 records/sec (6.33 MB/sec), 105.1 ms avg latency, 1404.0 max latency.
7126891 records sent, 1425378.2 records/sec (6.80 MB/sec), 2.0 ms avg latency, 45.0 max latency.
5626998 records sent, 1125399.6 records/sec (5.37 MB/sec), 87.8 ms avg latency, 1334.0 max latency.
6070241 records sent, 1214048.2 records/sec (5.79 MB/sec), 49.3 ms avg latency, 1346.0 max latency.
7405333 records sent, 1481066.6 records/sec (7.06 MB/sec), 1.5 ms avg latency, 25.0 max latency.
7021604 records sent, 1404320.8 records/sec (6.70 MB/sec), 11.3 ms avg latency, 597.0 max latency.
6288927 records sent, 1257785.4 records/sec (6.00 MB/sec), 107.8 ms avg latency, 1455.0 max latency.
6522037 records sent, 1304407.4 records/sec (6.22 MB/sec), 12.8 ms avg latency, 466.0 max latency.
5891295 records sent, 1178259.0 records/sec (5.62 MB/sec), 151.2 ms avg latency, 1101.0 max latency.
7341605 records sent, 1468321.0 records/sec (7.00 MB/sec), 13.4 ms avg latency, 515.0 max latency.
7398632 records sent, 1479726.4 records/sec (7.06 MB/sec), 1.4 ms avg latency, 29.0 max latency.
7106504 records sent, 1421300.8 records/sec (6.78 MB/sec), 18.7 ms avg latency, 612.0 max latency.
6323475 records sent, 1264695.0 records/sec (6.03 MB/sec), 102.1 ms avg latency, 1366.0 max latency.
6288204 records sent, 1257640.8 records/sec (6.00 MB/sec), 2.8 ms avg latency, 209.0 max latency.
5675646 records sent, 1135129.2 records/sec (5.41 MB/sec), 193.9 ms avg latency, 1254.0 max latency.
6668685 records sent, 1333737.0 records/sec (6.36 MB/sec), 47.2 ms avg latency, 522.0 max latency.
7335731 records sent, 1467146.2 records/sec (7.00 MB/sec), 1.6 ms avg latency, 27.0 max latency.
7404032 records sent, 1480806.4 records/sec (7.06 MB/sec), 1.6 ms avg latency, 28.0 max latency.
6798597 records sent, 1359719.4 records/sec (6.48 MB/sec), 53.9 ms avg latency, 1135.0 max latency.
7290972 records sent, 1458194.4 records/sec (6.95 MB/sec), 1.5 ms avg latency, 31.0 max latency.
6994487 records sent, 1398897.4 records/sec (6.67 MB/sec), 7.6 ms avg latency, 212.0 max latency.
6937432 records sent, 1387486.4 records/sec (6.62 MB/sec), 2.0 ms avg latency, 27.0 max latency.
6037770 records sent, 1207554.0 records/sec (5.76 MB/sec), 151.2 ms avg latency, 1451.0 max latency.
5847290 records sent, 1169458.0 records/sec (5.58 MB/sec), 191.0 ms avg latency, 1583.0 max latency.
6693934 records sent, 1338786.8 records/sec (6.38 MB/sec), 32.2 ms avg latency, 1075.0 max latency.
7501294 records sent, 1500258.8 records/sec (7.15 MB/sec), 1.6 ms avg latency, 24.0 max latency.
6960089 records sent, 1392017.8 records/sec (6.64 MB/sec), 7.0 ms avg latency, 212.0 max latency.
7262463 records sent, 1452492.6 records/sec (6.93 MB/sec), 2.2 ms avg latency, 21.0 max latency.
6215358 records sent, 1243071.6 records/sec (5.93 MB/sec), 24.2 ms avg latency, 977.0 max latency.
7505259 records sent, 1501051.8 records/sec (7.16 MB/sec), 1.6 ms avg latency, 24.0 max latency.
7386464 records sent, 1477292.8 records/sec (7.04 MB/sec), 1.4 ms avg latency, 31.0 max latency.
7420343 records sent, 1484068.6 records/sec (7.08 MB/sec), 1.5 ms avg latency, 22.0 max latency.
500000000 records sent, 1368561.942482 records/sec (6.53 MB/sec), 31.88 ms avg latency, 1583.00 ms max latency, 1 ms 50th, 131 ms 95th, 912 ms 99th, 1386 ms 99.9th.
```

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

5317356 records sent, 1063471.2 records/sec (5.07 MB/sec), 1.0 ms avg latency, 198.0 max latency.
7163586 records sent, 1432717.2 records/sec (6.83 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6572475 records sent, 1314495.0 records/sec (6.27 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6565705 records sent, 1313141.0 records/sec (6.26 MB/sec), 0.9 ms avg latency, 23.0 max latency.
6458375 records sent, 1291675.0 records/sec (6.16 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6633955 records sent, 1326791.0 records/sec (6.33 MB/sec), 0.8 ms avg latency, 30.0 max latency.
6879123 records sent, 1375824.6 records/sec (6.56 MB/sec), 1.9 ms avg latency, 109.0 max latency.
6228496 records sent, 1245699.2 records/sec (5.94 MB/sec), 0.9 ms avg latency, 27.0 max latency.
6938947 records sent, 1387789.4 records/sec (6.62 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6955851 records sent, 1391170.2 records/sec (6.63 MB/sec), 0.9 ms avg latency, 36.0 max latency.
6198022 records sent, 1239604.4 records/sec (5.91 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6220821 records sent, 1244164.2 records/sec (5.93 MB/sec), 0.8 ms avg latency, 27.0 max latency.
6565397 records sent, 1313079.4 records/sec (6.26 MB/sec), 1.2 ms avg latency, 87.0 max latency.
6808587 records sent, 1359270.7 records/sec (6.48 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6444228 records sent, 1288845.6 records/sec (6.15 MB/sec), 0.8 ms avg latency, 21.0 max latency.
6736170 records sent, 1347234.0 records/sec (6.42 MB/sec), 0.9 ms avg latency, 20.0 max latency.
7049825 records sent, 1409965.0 records/sec (6.72 MB/sec), 0.8 ms avg latency, 22.0 max latency.
7486105 records sent, 1497221.0 records/sec (7.14 MB/sec), 0.8 ms avg latency, 32.0 max latency.
6949049 records sent, 1389809.8 records/sec (6.63 MB/sec), 6.6 ms avg latency, 400.0 max latency.
7521708 records sent, 1504341.6 records/sec (7.17 MB/sec), 0.9 ms avg latency, 33.0 max latency.
6704417 records sent, 1340883.4 records/sec (6.39 MB/sec), 0.9 ms avg latency, 20.0 max latency.
7165941 records sent, 1433188.2 records/sec (6.83 MB/sec), 0.9 ms avg latency, 35.0 max latency.
6547400 records sent, 1309480.0 records/sec (6.24 MB/sec), 0.9 ms avg latency, 29.0 max latency.
6825933 records sent, 1365186.6 records/sec (6.51 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6479871 records sent, 1295974.2 records/sec (6.18 MB/sec), 0.8 ms avg latency, 21.0 max latency.
7059818 records sent, 1411963.6 records/sec (6.73 MB/sec), 0.8 ms avg latency, 20.0 max latency.
6649570 records sent, 1329914.0 records/sec (6.34 MB/sec), 0.8 ms avg latency, 21.0 max latency.
6371950 records sent, 1274390.0 records/sec (6.08 MB/sec), 2.6 ms avg latency, 386.0 max latency.
6806169 records sent, 1358788.0 records/sec (6.48 MB/sec), 0.9 ms avg latency, 33.0 max latency.
6767540 records sent, 1353508.0 records/sec (6.45 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6916814 records sent, 1383362.8 records/sec (6.60 MB/sec), 0.8 ms avg latency, 19.0 max latency.
6778378 records sent, 1355675.6 records/sec (6.46 MB/sec), 0.8 ms avg latency, 27.0 max latency.
6628149 records sent, 1323776.5 records/sec (6.31 MB/sec), 0.9 ms avg latency, 38.0 max latency.
6623192 records sent, 1321466.9 records/sec (6.30 MB/sec), 0.8 ms avg latency, 30.0 max latency.
7241020 records sent, 1448204.0 records/sec (6.91 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6612108 records sent, 1322421.6 records/sec (6.31 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6697884 records sent, 1339308.9 records/sec (6.39 MB/sec), 0.9 ms avg latency, 21.0 max latency.
7067336 records sent, 1413467.2 records/sec (6.74 MB/sec), 0.9 ms avg latency, 32.0 max latency.
6426127 records sent, 1285225.4 records/sec (6.13 MB/sec), 0.9 ms avg latency, 28.0 max latency.
6571876 records sent, 1314375.2 records/sec (6.27 MB/sec), 1.1 ms avg latency, 92.0 max latency.
6702233 records sent, 1340446.6 records/sec (6.39 MB/sec), 0.8 ms avg latency, 19.0 max latency.
6906569 records sent, 1381313.8 records/sec (6.59 MB/sec), 0.8 ms avg latency, 28.0 max latency.
7321651 records sent, 1464330.2 records/sec (6.98 MB/sec), 0.8 ms avg latency, 19.0 max latency.
6785503 records sent, 1357100.6 records/sec (6.47 MB/sec), 0.8 ms avg latency, 21.0 max latency.
6375577 records sent, 1275115.4 records/sec (6.08 MB/sec), 2.3 ms avg latency, 192.0 max latency.
5765332 records sent, 1153066.4 records/sec (5.50 MB/sec), 57.7 ms avg latency, 1183.0 max latency.
5979966 records sent, 1195993.2 records/sec (5.70 MB/sec), 0.8 ms avg latency, 25.0 max latency.
6653928 records sent, 1330785.6 records/sec (6.35 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6989214 records sent, 1397842.8 records/sec (6.67 MB/sec), 0.8 ms avg latency, 25.0 max latency.
6936295 records sent, 1387259.0 records/sec (6.61 MB/sec), 0.8 ms avg latency, 20.0 max latency.
6911883 records sent, 1382376.6 records/sec (6.59 MB/sec), 0.8 ms avg latency, 28.0 max latency.
7053836 records sent, 1410767.2 records/sec (6.73 MB/sec), 1.7 ms avg latency, 110.0 max latency.
7165822 records sent, 1433164.4 records/sec (6.83 MB/sec), 0.9 ms avg latency, 24.0 max latency.
7221380 records sent, 1444276.0 records/sec (6.89 MB/sec), 0.9 ms avg latency, 22.0 max latency.
5470323 records sent, 1094064.6 records/sec (5.22 MB/sec), 141.4 ms avg latency, 1946.0 max latency.
6073540 records sent, 1214708.0 records/sec (5.79 MB/sec), 0.9 ms avg latency, 27.0 max latency.
6872643 records sent, 1374528.6 records/sec (6.55 MB/sec), 1.0 ms avg latency, 32.0 max latency.
6362220 records sent, 1272444.0 records/sec (6.07 MB/sec), 87.5 ms avg latency, 1470.0 max latency.
6961228 records sent, 1392245.6 records/sec (6.64 MB/sec), 1.0 ms avg latency, 37.0 max latency.
6727859 records sent, 1345571.8 records/sec (6.42 MB/sec), 0.8 ms avg latency, 31.0 max latency.
7154925 records sent, 1430985.0 records/sec (6.82 MB/sec), 0.8 ms avg latency, 19.0 max latency.
7268091 records sent, 1453618.2 records/sec (6.93 MB/sec), 0.8 ms avg latency, 21.0 max latency.
7196464 records sent, 1439292.8 records/sec (6.86 MB/sec), 0.8 ms avg latency, 24.0 max latency.
6496679 records sent, 1299335.8 records/sec (6.20 MB/sec), 0.9 ms avg latency, 32.0 max latency.
6508277 records sent, 1301655.4 records/sec (6.21 MB/sec), 1.2 ms avg latency, 85.0 max latency.
6104265 records sent, 1220853.0 records/sec (5.82 MB/sec), 0.8 ms avg latency, 24.0 max latency.
7046236 records sent, 1409247.2 records/sec (6.72 MB/sec), 0.8 ms avg latency, 20.0 max latency.
7091611 records sent, 1418322.2 records/sec (6.76 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6864273 records sent, 1372854.6 records/sec (6.55 MB/sec), 0.8 ms avg latency, 23.0 max latency.
6591623 records sent, 1318324.6 records/sec (6.29 MB/sec), 25.1 ms avg latency, 774.0 max latency.
7018623 records sent, 1403724.6 records/sec (6.69 MB/sec), 0.8 ms avg latency, 20.0 max latency.
6862960 records sent, 1372592.0 records/sec (6.55 MB/sec), 0.8 ms avg latency, 21.0 max latency.
6892271 records sent, 1378454.2 records/sec (6.57 MB/sec), 0.8 ms avg latency, 28.0 max latency.
6989955 records sent, 1397991.0 records/sec (6.67 MB/sec), 0.8 ms avg latency, 23.0 max latency.
500000000 records sent, 1345974.727979 records/sec (6.42 MB/sec), 4.62 ms avg latency, 1946.00 ms max latency, 1 ms 50th, 1 ms 95th, 14 ms 99th, 1176 ms 99.9th.
```

## Rebalancing

Cordon all nodes so that the kafka pod doesnt get rescheduled. Delete kafka-1 pod. It would wait in Pending state, with no nodes to run upon. 

#### Leader Election upon Pod removal With PX. 
80 ms. (Fail 2/3 nodes)
#### Leader Election upon Pod addition with PX. 
155 seconds (Recover 3/3 nodes)

Raw Output
```
[2017-09-14 20:23:37,483] INFO Partition [kbrep3-async-px2,1] on broker 1003: Expanding ISR from 1003 to 1003,1001 (kafka.cluster.Partition)
[2017-09-14 20:23:55,813] INFO Partition [kbrep3-async-px2,0] on broker 1003: Expanding ISR from 1003,1001 to 1003,1001,1002 (kafka.cluster.Partition)
[2017-09-14 20:23:55,815] INFO Partition [kbrep3-async-px2,2] on broker 1003: Expanding ISR from 1003,1001 to 1003,1001,1002 (kafka.cluster.Partition)
[2017-09-14 20:23:55,817] INFO Partition [kbrep3-async-px2,1] on broker 1003: Expanding ISR from 1003,1001 to 1003,1001,1002 (kafka.cluster.Partition)
[2017-09-14 20:26:12,241] INFO [ReplicaFetcherManager on broker 1003] Removed fetcher for partitions kbrep3-async-px2-2 (kafka.server.ReplicaFetcherManager)
[2017-09-14 20:26:12,248] INFO [ReplicaFetcherManager on broker 1003] Added fetcher for partitions List([kbrep3-async-px2-2, initOffset 166666666 to broker BrokerEndPoint(1001,kafka-0.broker.kafka.svc.cluster.local,9092)] ) (kafka.server.ReplicaFetcherManager)
[2017-09-14 20:26:12,248] INFO [ReplicaFetcherThread-0-1001]: Starting (kafka.server.ReplicaFetcherThread)
[2017-09-14 20:26:12,252] INFO [ReplicaFetcherManager on broker 1003] Removed fetcher for partitions kbrep3-async-px2-0 (kafka.server.ReplicaFetcherManager)
[2017-09-14 20:26:12,256] INFO [ReplicaFetcherThread-0-1001]: Based on follower's leader epoch, leader replied with an offset 166666666 >= the follower's log end offset 166666666 in kbrep3-async-px2-2. No truncation needed. (kafka.server.ReplicaFetcherThread)
[2017-09-14 20:26:12,256] INFO Truncating kbrep3-async-px2-2 to 166666666 has no effect as the largest offset in the log is 166666665. (kafka.log.Log)
[2017-09-14 20:26:12,257] INFO [ReplicaFetcherThread-0-1002]: Starting (kafka.server.ReplicaFetcherThread)
[2017-09-14 20:26:12,257] INFO [ReplicaFetcherManager on broker 1003] Added fetcher for partitions List([kbrep3-async-px2-0, initOffset 166666667 to broker BrokerEndPoint(1002,kafka-1.broker.kafka.svc.cluster.local,9092)] ) (kafka.server.ReplicaFetcherManager)
[2017-09-14 20:26:13,319] INFO [ReplicaFetcherThread-0-1002]: Based on follower's leader epoch, leader replied with an offset 166666667 >= the follower's log end offset 166666667 in kbrep3-async-px2-0. No truncation needed. (kafka.server.ReplicaFetcherThread)

```

--------------------------------------------------------------------------------------------------------

## Single producer with sync Replication = 3 

### 25 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px2 --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

4838696 records sent, 967739.2 records/sec (4.61 MB/sec), 16.1 ms avg latency, 323.0 max latency.
7219621 records sent, 1443924.2 records/sec (6.89 MB/sec), 7.9 ms avg latency, 157.0 max latency.
7866778 records sent, 1573355.6 records/sec (7.50 MB/sec), 5.2 ms avg latency, 28.0 max latency.
25000000 records sent, 1375213.158039 records/sec (6.56 MB/sec), 8.05 ms avg latency, 323.00 ms max latency, 5 ms 50th, 17 ms 95th, 81 ms 99th, 266 ms 99.9th.

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-topic-rep3 --num-records 25000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
6029713 records sent, 1205942.6 records/sec (5.75 MB/sec), 4.3 ms avg latency, 169.0 max latency.
6934327 records sent, 1386865.4 records/sec (6.61 MB/sec), 4.2 ms avg latency, 60.0 max latency.
7716503 records sent, 1541143.0 records/sec (7.35 MB/sec), 4.4 ms avg latency, 29.0 max latency.
25000000 records sent, 1402681.927846 records/sec (6.69 MB/sec), 4.30 ms avg latency, 169.00 ms max latency, 4 ms 50th, 6 ms 95th, 18 ms 99th, 30 ms 99.9th.
```

### 50 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px2 --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

4943295 records sent, 988659.0 records/sec (4.71 MB/sec), 9.2 ms avg latency, 256.0 max latency.
7664999 records sent, 1532999.8 records/sec (7.31 MB/sec), 5.1 ms avg latency, 30.0 max latency.
5482227 records sent, 1096226.2 records/sec (5.23 MB/sec), 15.0 ms avg latency, 792.0 max latency.
5029897 records sent, 1005979.4 records/sec (4.80 MB/sec), 23.0 ms avg latency, 638.0 max latency.
4954767 records sent, 990953.4 records/sec (4.73 MB/sec), 51.7 ms avg latency, 715.0 max latency.
8141956 records sent, 1628391.2 records/sec (7.76 MB/sec), 18.1 ms avg latency, 723.0 max latency.
8001322 records sent, 1600264.4 records/sec (7.63 MB/sec), 5.0 ms avg latency, 30.0 max latency.
50000000 records sent, 1263839.037460 records/sec (6.03 MB/sec), 16.52 ms avg latency, 792.00 ms max latency, 5 ms 50th, 20 ms 95th, 444 ms 99th, 695 ms 99.9th.

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-topic-rep3 --num-records 50000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5792215 records sent, 1158443.0 records/sec (5.52 MB/sec), 3.9 ms avg latency, 183.0 max latency.
6665949 records sent, 1332124.1 records/sec (6.35 MB/sec), 3.8 ms avg latency, 28.0 max latency.
7024597 records sent, 1401555.7 records/sec (6.68 MB/sec), 4.0 ms avg latency, 34.0 max latency.
6781899 records sent, 1356379.8 records/sec (6.47 MB/sec), 4.0 ms avg latency, 85.0 max latency.
7389197 records sent, 1477839.4 records/sec (7.05 MB/sec), 4.3 ms avg latency, 89.0 max latency.
7591860 records sent, 1518372.0 records/sec (7.24 MB/sec), 4.3 ms avg latency, 28.0 max latency.
7726062 records sent, 1542744.0 records/sec (7.36 MB/sec), 4.1 ms avg latency, 26.0 max latency.
50000000 records sent, 1400717.167190 records/sec (6.68 MB/sec), 4.06 ms avg latency, 183.00 ms max latency, 4 ms 50th, 5 ms 95th, 17 ms 99th, 33 ms 99.9th.
```

### 200 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px2 --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

5606755 records sent, 1121351.0 records/sec (5.35 MB/sec), 11.1 ms avg latency, 292.0 max latency.
7190452 records sent, 1438090.4 records/sec (6.86 MB/sec), 14.0 ms avg latency, 528.0 max latency.
7845178 records sent, 1569035.6 records/sec (7.48 MB/sec), 5.1 ms avg latency, 26.0 max latency.
5957182 records sent, 1191436.4 records/sec (5.68 MB/sec), 17.1 ms avg latency, 539.0 max latency.
4471392 records sent, 894278.4 records/sec (4.26 MB/sec), 42.1 ms avg latency, 1329.0 max latency.
5241190 records sent, 1048238.0 records/sec (5.00 MB/sec), 133.6 ms avg latency, 2038.0 max latency.
7821521 records sent, 1564304.2 records/sec (7.46 MB/sec), 5.2 ms avg latency, 30.0 max latency.
7761761 records sent, 1552352.2 records/sec (7.40 MB/sec), 5.3 ms avg latency, 36.0 max latency.
8062497 records sent, 1612177.0 records/sec (7.69 MB/sec), 5.2 ms avg latency, 29.0 max latency.
5082352 records sent, 1016470.4 records/sec (4.85 MB/sec), 43.8 ms avg latency, 884.0 max latency.
3094775 records sent, 618955.0 records/sec (2.95 MB/sec), 356.2 ms avg latency, 1967.0 max latency.
7502539 records sent, 1500507.8 records/sec (7.15 MB/sec), 27.6 ms avg latency, 1316.0 max latency.
8076690 records sent, 1615338.0 records/sec (7.70 MB/sec), 5.2 ms avg latency, 26.0 max latency.
7879895 records sent, 1575979.0 records/sec (7.51 MB/sec), 5.1 ms avg latency, 31.0 max latency.
7193416 records sent, 1438683.2 records/sec (6.86 MB/sec), 11.0 ms avg latency, 567.0 max latency.
6316383 records sent, 1263276.6 records/sec (6.02 MB/sec), 31.9 ms avg latency, 1185.0 max latency.
3747702 records sent, 749540.4 records/sec (3.57 MB/sec), 215.2 ms avg latency, 1506.0 max latency.
2551817 records sent, 510363.4 records/sec (2.43 MB/sec), 864.9 ms avg latency, 2829.0 max latency.
7923982 records sent, 1584796.4 records/sec (7.56 MB/sec), 5.1 ms avg latency, 29.0 max latency.
8083682 records sent, 1616736.4 records/sec (7.71 MB/sec), 5.0 ms avg latency, 28.0 max latency.
6979731 records sent, 1395946.2 records/sec (6.66 MB/sec), 6.2 ms avg latency, 93.0 max latency.
4761724 records sent, 952344.8 records/sec (4.54 MB/sec), 51.3 ms avg latency, 632.0 max latency.
3296698 records sent, 659339.6 records/sec (3.14 MB/sec), 79.6 ms avg latency, 1100.0 max latency.
5830942 records sent, 1166188.4 records/sec (5.56 MB/sec), 62.8 ms avg latency, 1119.0 max latency.
7942524 records sent, 1588504.8 records/sec (7.57 MB/sec), 5.0 ms avg latency, 25.0 max latency.
8171673 records sent, 1634334.6 records/sec (7.79 MB/sec), 5.0 ms avg latency, 28.0 max latency.
7092225 records sent, 1418445.0 records/sec (6.76 MB/sec), 12.3 ms avg latency, 491.0 max latency.
1626401 records sent, 325280.2 records/sec (1.55 MB/sec), 251.0 ms avg latency, 1575.0 max latency.
6940969 records sent, 1388193.8 records/sec (6.62 MB/sec), 75.4 ms avg latency, 1286.0 max latency.
7747306 records sent, 1549461.2 records/sec (7.39 MB/sec), 5.0 ms avg latency, 30.0 max latency.
7964541 records sent, 1592908.2 records/sec (7.60 MB/sec), 5.0 ms avg latency, 27.0 max latency.
200000000 records sent, 1268592.813422 records/sec (6.05 MB/sec), 42.10 ms avg latency, 2829.00 ms max latency, 5 ms 50th, 106 ms 95th, 1158 ms 99th, 2623 ms 99.9th.

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-topic-rep3 --num-records 200000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
6373075 records sent, 1274615.0 records/sec (6.08 MB/sec), 4.7 ms avg latency, 186.0 max latency.
7314228 records sent, 1462845.6 records/sec (6.98 MB/sec), 4.7 ms avg latency, 36.0 max latency.
7408158 records sent, 1481631.6 records/sec (7.06 MB/sec), 4.7 ms avg latency, 29.0 max latency.
7676893 records sent, 1535378.6 records/sec (7.32 MB/sec), 4.6 ms avg latency, 26.0 max latency.
7635922 records sent, 1527184.4 records/sec (7.28 MB/sec), 4.6 ms avg latency, 85.0 max latency.
7727739 records sent, 1545547.8 records/sec (7.37 MB/sec), 4.4 ms avg latency, 25.0 max latency.
7670740 records sent, 1534148.0 records/sec (7.32 MB/sec), 4.7 ms avg latency, 30.0 max latency.
7560884 records sent, 1512176.8 records/sec (7.21 MB/sec), 5.0 ms avg latency, 86.0 max latency.
7647216 records sent, 1527915.3 records/sec (7.29 MB/sec), 4.2 ms avg latency, 25.0 max latency.
7063643 records sent, 1412728.6 records/sec (6.74 MB/sec), 4.3 ms avg latency, 27.0 max latency.
6872827 records sent, 1374565.4 records/sec (6.55 MB/sec), 9.4 ms avg latency, 435.0 max latency.
7647110 records sent, 1529422.0 records/sec (7.29 MB/sec), 4.5 ms avg latency, 55.0 max latency.
8102181 records sent, 1620436.2 records/sec (7.73 MB/sec), 4.3 ms avg latency, 29.0 max latency.
8028542 records sent, 1605708.4 records/sec (7.66 MB/sec), 4.2 ms avg latency, 75.0 max latency.
8064863 records sent, 1612972.6 records/sec (7.69 MB/sec), 4.3 ms avg latency, 26.0 max latency.
8081833 records sent, 1616366.6 records/sec (7.71 MB/sec), 4.3 ms avg latency, 32.0 max latency.
8078244 records sent, 1615648.8 records/sec (7.70 MB/sec), 4.3 ms avg latency, 25.0 max latency.
7593335 records sent, 1518667.0 records/sec (7.24 MB/sec), 8.3 ms avg latency, 452.0 max latency.
7725807 records sent, 1545161.4 records/sec (7.37 MB/sec), 4.4 ms avg latency, 29.0 max latency.
6674364 records sent, 1334872.8 records/sec (6.37 MB/sec), 4.7 ms avg latency, 86.0 max latency.
8135791 records sent, 1627158.2 records/sec (7.76 MB/sec), 4.3 ms avg latency, 40.0 max latency.
7963461 records sent, 1592692.2 records/sec (7.59 MB/sec), 4.3 ms avg latency, 40.0 max latency.
6573514 records sent, 1314702.8 records/sec (6.27 MB/sec), 7.4 ms avg latency, 349.0 max latency.
7943834 records sent, 1588766.8 records/sec (7.58 MB/sec), 4.2 ms avg latency, 24.0 max latency.
7912413 records sent, 1582482.6 records/sec (7.55 MB/sec), 4.2 ms avg latency, 26.0 max latency.
7324398 records sent, 1464879.6 records/sec (6.99 MB/sec), 4.4 ms avg latency, 75.0 max latency.
200000000 records sent, 1514463.122823 records/sec (7.22 MB/sec), 4.86 ms avg latency, 452.00 ms max latency, 4 ms 50th, 6 ms 95th, 18 ms 99th, 192 ms 99.9th.

```

### 500 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-topic-px2 --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196

4646102 records sent, 929220.4 records/sec (4.43 MB/sec), 16.0 ms avg latency, 497.0 max latency.
6342725 records sent, 1268545.0 records/sec (6.05 MB/sec), 20.7 ms avg latency, 555.0 max latency.
7606289 records sent, 1521257.8 records/sec (7.25 MB/sec), 4.9 ms avg latency, 25.0 max latency.
6469173 records sent, 1293834.6 records/sec (6.17 MB/sec), 10.9 ms avg latency, 406.0 max latency.
5055092 records sent, 1010816.2 records/sec (4.82 MB/sec), 18.1 ms avg latency, 512.0 max latency.
3942390 records sent, 788478.0 records/sec (3.76 MB/sec), 197.8 ms avg latency, 1843.0 max latency.
7682545 records sent, 1536509.0 records/sec (7.33 MB/sec), 4.9 ms avg latency, 29.0 max latency.
7774569 records sent, 1554913.8 records/sec (7.41 MB/sec), 5.0 ms avg latency, 27.0 max latency.
7870540 records sent, 1574108.0 records/sec (7.51 MB/sec), 5.0 ms avg latency, 31.0 max latency.
5095132 records sent, 1019026.4 records/sec (4.86 MB/sec), 53.2 ms avg latency, 762.0 max latency.
3159035 records sent, 631554.4 records/sec (3.01 MB/sec), 124.2 ms avg latency, 987.0 max latency.
6008720 records sent, 1201744.0 records/sec (5.73 MB/sec), 18.1 ms avg latency, 553.0 max latency.
8191469 records sent, 1638293.8 records/sec (7.81 MB/sec), 5.0 ms avg latency, 28.0 max latency.
7610285 records sent, 1522057.0 records/sec (7.26 MB/sec), 4.9 ms avg latency, 26.0 max latency.
6192312 records sent, 1238462.4 records/sec (5.91 MB/sec), 12.2 ms avg latency, 262.0 max latency.
4587944 records sent, 917588.8 records/sec (4.38 MB/sec), 46.3 ms avg latency, 659.0 max latency.
2886545 records sent, 577309.0 records/sec (2.75 MB/sec), 345.9 ms avg latency, 1826.0 max latency.
7926301 records sent, 1585260.2 records/sec (7.56 MB/sec), 4.9 ms avg latency, 28.0 max latency.
7739954 records sent, 1547990.8 records/sec (7.38 MB/sec), 4.9 ms avg latency, 32.0 max latency.
7797487 records sent, 1559497.4 records/sec (7.44 MB/sec), 4.9 ms avg latency, 28.0 max latency.
5070630 records sent, 1014126.0 records/sec (4.84 MB/sec), 55.4 ms avg latency, 694.0 max latency.
4276067 records sent, 855213.4 records/sec (4.08 MB/sec), 92.3 ms avg latency, 864.0 max latency.
5587712 records sent, 1117542.4 records/sec (5.33 MB/sec), 75.2 ms avg latency, 982.0 max latency.
7741761 records sent, 1548352.2 records/sec (7.38 MB/sec), 4.8 ms avg latency, 27.0 max latency.
7529744 records sent, 1505948.8 records/sec (7.18 MB/sec), 4.7 ms avg latency, 27.0 max latency.
7440254 records sent, 1487753.2 records/sec (7.09 MB/sec), 5.1 ms avg latency, 86.0 max latency.
5780985 records sent, 1156197.0 records/sec (5.51 MB/sec), 27.0 ms avg latency, 564.0 max latency.
2309388 records sent, 461877.6 records/sec (2.20 MB/sec), 243.9 ms avg latency, 1164.0 max latency.
3612941 records sent, 722588.2 records/sec (3.45 MB/sec), 61.5 ms avg latency, 698.0 max latency.
7767226 records sent, 1553445.2 records/sec (7.41 MB/sec), 4.9 ms avg latency, 24.0 max latency.
7743378 records sent, 1548675.6 records/sec (7.38 MB/sec), 4.8 ms avg latency, 26.0 max latency.
5999473 records sent, 1199894.6 records/sec (5.72 MB/sec), 20.3 ms avg latency, 735.0 max latency.
4730885 records sent, 946177.0 records/sec (4.51 MB/sec), 18.1 ms avg latency, 718.0 max latency.
3279226 records sent, 655845.2 records/sec (3.13 MB/sec), 112.0 ms avg latency, 773.0 max latency.
6872767 records sent, 1374553.4 records/sec (6.55 MB/sec), 6.7 ms avg latency, 163.0 max latency.
4799245 records sent, 959849.0 records/sec (4.58 MB/sec), 22.6 ms avg latency, 769.0 max latency.
5808359 records sent, 1063802.0 records/sec (5.07 MB/sec), 13.2 ms avg latency, 558.0 max latency.
5984578 records sent, 1196915.6 records/sec (5.71 MB/sec), 53.9 ms avg latency, 1790.0 max latency.
7809922 records sent, 1561984.4 records/sec (7.45 MB/sec), 4.9 ms avg latency, 31.0 max latency.
7960494 records sent, 1592098.8 records/sec (7.59 MB/sec), 4.9 ms avg latency, 25.0 max latency.
6155023 records sent, 1231004.6 records/sec (5.87 MB/sec), 7.0 ms avg latency, 113.0 max latency.
2852215 records sent, 570443.0 records/sec (2.72 MB/sec), 87.8 ms avg latency, 854.0 max latency.
3901742 records sent, 780348.4 records/sec (3.72 MB/sec), 89.9 ms avg latency, 1753.0 max latency.
7566218 records sent, 1513243.6 records/sec (7.22 MB/sec), 5.1 ms avg latency, 34.0 max latency.
7633282 records sent, 1526656.4 records/sec (7.28 MB/sec), 4.9 ms avg latency, 43.0 max latency.
6625531 records sent, 1325106.2 records/sec (6.32 MB/sec), 6.2 ms avg latency, 97.0 max latency.
4868232 records sent, 973646.4 records/sec (4.64 MB/sec), 22.1 ms avg latency, 663.0 max latency.
2459238 records sent, 491847.6 records/sec (2.35 MB/sec), 258.0 ms avg latency, 1325.0 max latency.
7065123 records sent, 1413024.6 records/sec (6.74 MB/sec), 15.7 ms avg latency, 943.0 max latency.
7759776 records sent, 1551955.2 records/sec (7.40 MB/sec), 4.9 ms avg latency, 35.0 max latency.
8148497 records sent, 1629699.4 records/sec (7.77 MB/sec), 5.1 ms avg latency, 26.0 max latency.
6615776 records sent, 1323155.2 records/sec (6.31 MB/sec), 14.6 ms avg latency, 250.0 max latency.
2834457 records sent, 566891.4 records/sec (2.70 MB/sec), 132.1 ms avg latency, 865.0 max latency.
4149956 records sent, 829991.2 records/sec (3.96 MB/sec), 90.0 ms avg latency, 867.0 max latency.
8085900 records sent, 1617180.0 records/sec (7.71 MB/sec), 5.0 ms avg latency, 26.0 max latency.
7971505 records sent, 1592390.1 records/sec (7.59 MB/sec), 5.1 ms avg latency, 29.0 max latency.
7616756 records sent, 1523351.2 records/sec (7.26 MB/sec), 4.9 ms avg latency, 32.0 max latency.
6624551 records sent, 1324910.2 records/sec (6.32 MB/sec), 6.5 ms avg latency, 224.0 max latency.
4831734 records sent, 966346.8 records/sec (4.61 MB/sec), 36.0 ms avg latency, 807.0 max latency.
1860042 records sent, 372008.4 records/sec (1.77 MB/sec), 476.8 ms avg latency, 1497.0 max latency.
4746033 records sent, 949206.6 records/sec (4.53 MB/sec), 105.1 ms avg latency, 1615.0 max latency.
8440214 records sent, 1688042.8 records/sec (8.05 MB/sec), 5.1 ms avg latency, 34.0 max latency.
8009706 records sent, 1601941.2 records/sec (7.64 MB/sec), 5.0 ms avg latency, 47.0 max latency.
6501082 records sent, 1300216.4 records/sec (6.20 MB/sec), 12.6 ms avg latency, 317.0 max latency.
4211743 records sent, 842348.6 records/sec (4.02 MB/sec), 36.4 ms avg latency, 552.0 max latency.
2551865 records sent, 510373.0 records/sec (2.43 MB/sec), 169.1 ms avg latency, 919.0 max latency.
7937315 records sent, 1587463.0 records/sec (7.57 MB/sec), 9.8 ms avg latency, 432.0 max latency.
7370515 records sent, 1474103.0 records/sec (7.03 MB/sec), 4.8 ms avg latency, 27.0 max latency.
8282686 records sent, 1656537.2 records/sec (7.90 MB/sec), 5.0 ms avg latency, 28.0 max latency.
5375090 records sent, 1075018.0 records/sec (5.13 MB/sec), 30.7 ms avg latency, 754.0 max latency.
3403809 records sent, 680625.7 records/sec (3.25 MB/sec), 81.4 ms avg latency, 1020.0 max latency.
4057668 records sent, 811533.6 records/sec (3.87 MB/sec), 131.7 ms avg latency, 1544.0 max latency.
7478479 records sent, 1495695.8 records/sec (7.13 MB/sec), 4.8 ms avg latency, 28.0 max latency.
8105345 records sent, 1621069.0 records/sec (7.73 MB/sec), 5.1 ms avg latency, 38.0 max latency.
7050557 records sent, 1410111.4 records/sec (6.72 MB/sec), 11.6 ms avg latency, 232.0 max latency.
5255442 records sent, 1051088.4 records/sec (5.01 MB/sec), 43.0 ms avg latency, 666.0 max latency.
1465663 records sent, 293074.0 records/sec (1.40 MB/sec), 74.9 ms avg latency, 743.0 max latency.
7016204 records sent, 1403240.8 records/sec (6.69 MB/sec), 11.4 ms avg latency, 327.0 max latency.
6238708 records sent, 1247741.6 records/sec (5.95 MB/sec), 37.4 ms avg latency, 954.0 max latency.
8399525 records sent, 1679905.0 records/sec (8.01 MB/sec), 5.0 ms avg latency, 26.0 max latency.
8444584 records sent, 1688916.8 records/sec (8.05 MB/sec), 5.0 ms avg latency, 31.0 max latency.
8013176 records sent, 1602635.2 records/sec (7.64 MB/sec), 5.2 ms avg latency, 53.0 max latency.
500000000 records sent, 1206986.035172 records/sec (5.76 MB/sec), 28.49 ms avg latency, 1843.00 ms max latency, 5 ms 50th, 104 ms 95th, 673 ms 99th, 1503 ms 99.9th

Without PX
-------------------------------------
bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-topic-rep3 --num-records 500000000 --record-size 5 --throughput -1 --producer-props acks=-1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

6635691 records sent, 1327138.2 records/sec (6.33 MB/sec), 4.2 ms avg latency, 173.0 max latency.
7666110 records sent, 1533222.0 records/sec (7.31 MB/sec), 4.2 ms avg latency, 27.0 max latency.
7222532 records sent, 1444506.4 records/sec (6.89 MB/sec), 4.0 ms avg latency, 28.0 max latency.
7116668 records sent, 1423333.6 records/sec (6.79 MB/sec), 4.4 ms avg latency, 77.0 max latency.
7778185 records sent, 1555637.0 records/sec (7.42 MB/sec), 4.2 ms avg latency, 25.0 max latency.
8044630 records sent, 1608926.0 records/sec (7.67 MB/sec), 4.3 ms avg latency, 28.0 max latency.
7639079 records sent, 1527815.8 records/sec (7.29 MB/sec), 4.2 ms avg latency, 41.0 max latency.
7023416 records sent, 1404683.2 records/sec (6.70 MB/sec), 10.3 ms avg latency, 429.0 max latency.
6975626 records sent, 1395125.2 records/sec (6.65 MB/sec), 4.0 ms avg latency, 28.0 max latency.
7076822 records sent, 1415364.4 records/sec (6.75 MB/sec), 3.9 ms avg latency, 24.0 max latency.
7516486 records sent, 1503297.2 records/sec (7.17 MB/sec), 4.1 ms avg latency, 26.0 max latency.
7180414 records sent, 1436082.8 records/sec (6.85 MB/sec), 3.9 ms avg latency, 28.0 max latency.
6622078 records sent, 1324415.6 records/sec (6.32 MB/sec), 4.0 ms avg latency, 39.0 max latency.
7313312 records sent, 1462662.4 records/sec (6.97 MB/sec), 5.1 ms avg latency, 137.0 max latency.
7177278 records sent, 1435455.6 records/sec (6.84 MB/sec), 4.1 ms avg latency, 57.0 max latency.
7133904 records sent, 1426780.8 records/sec (6.80 MB/sec), 4.0 ms avg latency, 29.0 max latency.
7401270 records sent, 1480254.0 records/sec (7.06 MB/sec), 4.2 ms avg latency, 28.0 max latency.
7740817 records sent, 1548163.4 records/sec (7.38 MB/sec), 4.2 ms avg latency, 27.0 max latency.
8011419 records sent, 1602283.8 records/sec (7.64 MB/sec), 4.2 ms avg latency, 28.0 max latency.
7587788 records sent, 1517557.6 records/sec (7.24 MB/sec), 4.2 ms avg latency, 27.0 max latency.
6235624 records sent, 1247124.8 records/sec (5.95 MB/sec), 28.0 ms avg latency, 784.0 max latency.
7264538 records sent, 1452907.6 records/sec (6.93 MB/sec), 4.1 ms avg latency, 28.0 max latency.
7074257 records sent, 1414851.4 records/sec (6.75 MB/sec), 4.0 ms avg latency, 26.0 max latency.
7683270 records sent, 1536654.0 records/sec (7.33 MB/sec), 4.3 ms avg latency, 28.0 max latency.
6898684 records sent, 1379736.8 records/sec (6.58 MB/sec), 4.1 ms avg latency, 28.0 max latency.
7081428 records sent, 1415719.3 records/sec (6.75 MB/sec), 4.0 ms avg latency, 27.0 max latency.
7798974 records sent, 1559794.8 records/sec (7.44 MB/sec), 4.2 ms avg latency, 26.0 max latency.
7213323 records sent, 1442664.6 records/sec (6.88 MB/sec), 5.0 ms avg latency, 126.0 max latency.
6760069 records sent, 1352013.8 records/sec (6.45 MB/sec), 4.2 ms avg latency, 107.0 max latency.
7732633 records sent, 1546526.6 records/sec (7.37 MB/sec), 4.2 ms avg latency, 91.0 max latency.
7312398 records sent, 1462479.6 records/sec (6.97 MB/sec), 4.1 ms avg latency, 31.0 max latency.
6916439 records sent, 1383287.8 records/sec (6.60 MB/sec), 4.0 ms avg latency, 23.0 max latency.
7125305 records sent, 1425061.0 records/sec (6.80 MB/sec), 4.1 ms avg latency, 27.0 max latency.
6603812 records sent, 1319706.6 records/sec (6.29 MB/sec), 5.6 ms avg latency, 169.0 max latency.
7002530 records sent, 1397431.7 records/sec (6.66 MB/sec), 5.1 ms avg latency, 173.0 max latency.
7406910 records sent, 1481382.0 records/sec (7.06 MB/sec), 4.5 ms avg latency, 43.0 max latency.
7766927 records sent, 1553385.4 records/sec (7.41 MB/sec), 4.3 ms avg latency, 28.0 max latency.
7801535 records sent, 1560307.0 records/sec (7.44 MB/sec), 4.2 ms avg latency, 27.0 max latency.
7753652 records sent, 1550730.4 records/sec (7.39 MB/sec), 4.1 ms avg latency, 25.0 max latency.
7245568 records sent, 1449113.6 records/sec (6.91 MB/sec), 4.1 ms avg latency, 27.0 max latency.
6852890 records sent, 1370578.0 records/sec (6.54 MB/sec), 7.8 ms avg latency, 367.0 max latency.
7804369 records sent, 1560873.8 records/sec (7.44 MB/sec), 4.4 ms avg latency, 66.0 max latency.
7785048 records sent, 1557009.6 records/sec (7.42 MB/sec), 4.1 ms avg latency, 29.0 max latency.
7843981 records sent, 1568796.2 records/sec (7.48 MB/sec), 4.2 ms avg latency, 26.0 max latency.
4059654 records sent, 810795.7 records/sec (3.87 MB/sec), 4.2 ms avg latency, 2312.0 max latency.
7655838 records sent, 1531167.6 records/sec (7.30 MB/sec), 99.5 ms avg latency, 2315.0 max latency.
7563716 records sent, 1512743.2 records/sec (7.21 MB/sec), 4.5 ms avg latency, 41.0 max latency.
6795031 records sent, 1359006.2 records/sec (6.48 MB/sec), 11.5 ms avg latency, 561.0 max latency.
8047515 records sent, 1609503.0 records/sec (7.67 MB/sec), 4.4 ms avg latency, 27.0 max latency.
7478932 records sent, 1495786.4 records/sec (7.13 MB/sec), 4.2 ms avg latency, 27.0 max latency.
7756363 records sent, 1551272.6 records/sec (7.40 MB/sec), 4.3 ms avg latency, 29.0 max latency.
7745166 records sent, 1549033.2 records/sec (7.39 MB/sec), 4.2 ms avg latency, 31.0 max latency.
7997211 records sent, 1594976.3 records/sec (7.61 MB/sec), 4.2 ms avg latency, 25.0 max latency.
5427330 records sent, 1085466.0 records/sec (5.18 MB/sec), 72.8 ms avg latency, 1232.0 max latency.
7956020 records sent, 1587711.0 records/sec (7.57 MB/sec), 4.6 ms avg latency, 26.0 max latency.
7199567 records sent, 1439913.4 records/sec (6.87 MB/sec), 6.7 ms avg latency, 246.0 max latency.
6433627 records sent, 1286725.4 records/sec (6.14 MB/sec), 4.3 ms avg latency, 326.0 max latency.
7772747 records sent, 1554549.4 records/sec (7.41 MB/sec), 4.1 ms avg latency, 23.0 max latency.
7391622 records sent, 1478324.4 records/sec (7.05 MB/sec), 4.8 ms avg latency, 104.0 max latency.
7506247 records sent, 1501249.4 records/sec (7.16 MB/sec), 4.8 ms avg latency, 89.0 max latency.
7076323 records sent, 1415264.6 records/sec (6.75 MB/sec), 4.2 ms avg latency, 36.0 max latency.
6507243 records sent, 1301448.6 records/sec (6.21 MB/sec), 4.7 ms avg latency, 166.0 max latency.
7074342 records sent, 1414868.4 records/sec (6.75 MB/sec), 4.2 ms avg latency, 38.0 max latency.
7482473 records sent, 1496494.6 records/sec (7.14 MB/sec), 4.0 ms avg latency, 38.0 max latency.
5655796 records sent, 1120625.3 records/sec (5.34 MB/sec), 25.5 ms avg latency, 817.0 max latency.
5817178 records sent, 1163435.6 records/sec (5.55 MB/sec), 104.0 ms avg latency, 1551.0 max latency.
7510804 records sent, 1502160.8 records/sec (7.16 MB/sec), 4.4 ms avg latency, 89.0 max latency.
6587702 records sent, 1317540.4 records/sec (6.28 MB/sec), 4.0 ms avg latency, 27.0 max latency.
6781999 records sent, 1356399.8 records/sec (6.47 MB/sec), 5.3 ms avg latency, 165.0 max latency.
500000000 records sent, 1441237.850365 records/sec (6.87 MB/sec), 8.46 ms avg latency, 2315.00 ms max latency, 4 ms 50th, 6 ms 95th, 25 ms 99th, 1197 ms 99.9th.
```

## Rebalancing

Cordon all nodes so that the kafka pod doesnt get rescheduled. Delete kafka-1 pod. It would wait in Pending state, with no nodes to run upon. 

#### Leader Election upon Pod removal With PX. 
30 ms. (Fail 2/3 nodes)
#### Leader Election upon Pod addition with PX. 
150 seconds (Recover 3/3 nodes)

Raw Output. 
```
[2017-09-14 18:55:15,455] INFO Partition [kbrep3-async-px2,1] on broker 1003: Expanding ISR from 1003,1002 to 1003,1002,1001 (kafka.cluster.Partition)
[2017-09-14 18:57:50,348] INFO [ReplicaFetcherManager on broker 1003] Removed fetcher for partitions kbrep3-async-px2-0 (kafka.server.ReplicaFetcherManager)
[2017-09-14 18:57:50,353] INFO [ReplicaFetcherManager on broker 1003] Added fetcher for partitions List([kbrep3-async-px2-0, initOffset 166666667 to broker BrokerEndPoint(1001,kafka-0.broker.kafka.svc.cluster.local,9092)] ) (kafka.server.ReplicaFetcherManager)
[2017-09-14 18:57:50,354] INFO [ReplicaFetcherThread-0-1001]: Starting (kafka.server.ReplicaFetcherThread)
[2017-09-14 18:57:50,357] INFO [ReplicaFetcherManager on broker 1003] Removed fetcher for partitions kbrep3-async-px2-1 (kafka.server.ReplicaFetcherManager)
[2017-09-14 18:57:50,360] INFO [ReplicaFetcherManager on broker 1003] Added fetcher for partitions List([kbrep3-async-px2-1, initOffset 166666666 to broker BrokerEndPoint(1002,kafka-1.broker.kafka.svc.cluster.local,9092)] ) (kafka.server.ReplicaFetcherManager)
[2017-09-14 18:57:50,360] INFO [ReplicaFetcherThread-0-1002]: Starting (kafka.server.ReplicaFetcherThread)
[2017-09-14 18:57:50,360] INFO [ReplicaFetcherThread-0-1001]: Based on follower's leader epoch, leader replied with an offset 166666667 >= the follower's log end offset 166666667 in kbrep3-async-px2-0. No truncation needed. (kafka.server.ReplicaFetcherThread)
[2017-09-14 18:57:50,360] INFO Truncating kbrep3-async-px2-0 to 166666667 has no effect as the largest offset in the log is 166666666. (kafka.log.Log)
```

### Leader Election upon Pod failure Without PX. 

--------------------------------------------------------------------------------------------------------

## Three producers with async Replication = 3 

### 25 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 8333333 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5926550 records sent, 1185310.0 records/sec (5.65 MB/sec), 1.4 ms avg latency, 185.0 max latency.
8333333 records sent, 1221896.334311 records/sec (5.83 MB/sec), 3.11 ms avg latency, 215.00 ms max latency, 1 ms 50th, 4 ms 95th, 57 ms 99th, 196 ms 99.9th.

Producer 2 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 8333333 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
6367481 records sent, 1273496.2 records/sec (6.07 MB/sec), 6.2 ms avg latency, 222.0 max latency.
8333333 records sent, 1318982.747705 records/sec (6.29 MB/sec), 5.15 ms avg latency, 222.00 ms max latency, 1 ms 50th, 11 ms 95th, 147 ms 99th, 213 ms 99.9th.

Producer 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 8333333 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
6192340 records sent, 1238468.0 records/sec (5.91 MB/sec), 2.2 ms avg latency, 172.0 max latency.
8333333 records sent, 1287796.785659 records/sec (6.14 MB/sec), 2.19 ms avg latency, 172.00 ms max latency, 2 ms 50th, 4 ms 95th, 16 ms 99th, 38 ms 99.9th.


Without PX 
-------------------------------------
Producer 1 


bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 8333333 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5866788 records sent, 1173357.6 records/sec (5.60 MB/sec), 1.0 ms avg latency, 169.0 max latency.
8333333 records sent, 1208254.748441 records/sec (5.76 MB/sec), 0.97 ms avg latency, 169.00 ms max latency, 1 ms 50th, 1 ms 95th, 9 ms 99th, 22 ms 99.9th.

Producer 2 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 8333333 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
6104653 records sent, 1220930.6 records/sec (5.82 MB/sec), 0.9 ms avg latency, 113.0 max latency.
8333333 records sent, 1263200.394119 records/sec (6.02 MB/sec), 0.92 ms avg latency, 113.00 ms max latency, 1 ms 50th, 2 ms 95th, 6 ms 99th, 16 ms 99.9th.

Producer 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 8333333 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5475868 records sent, 1095173.6 records/sec (5.22 MB/sec), 0.9 ms avg latency, 200.0 max latency.
8333333 records sent, 1128413.405552 records/sec (5.38 MB/sec), 0.93 ms avg latency, 200.00 ms max latency, 1 ms 50th, 2 ms 95th, 10 ms 99th, 18 ms 99.9th.
```

### 50 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 16666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5520464 records sent, 1104092.8 records/sec (5.26 MB/sec), 7.1 ms avg latency, 376.0 max latency.
5551685 records sent, 1110337.0 records/sec (5.29 MB/sec), 12.8 ms avg latency, 486.0 max latency.
16666666 records sent, 1122939.361272 records/sec (5.35 MB/sec), 14.06 ms avg latency, 907.00 ms max latency, 1 ms 50th, 9 ms 95th, 261 ms 99th, 365 ms 99.9th.

Producer 2 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 16666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5973448 records sent, 1194689.6 records/sec (5.70 MB/sec), 10.0 ms avg latency, 375.0 max latency.
7605113 records sent, 1521022.6 records/sec (7.25 MB/sec), 3.6 ms avg latency, 222.0 max latency.
16666666 records sent, 1373098.203987 records/sec (6.55 MB/sec), 10.98 ms avg latency, 485.00 ms max latency, 2 ms 50th, 140 ms 95th, 416 ms 99th, 482 ms 99.9th.


Producer 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 16666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
3108451 records sent, 621441.6 records/sec (2.96 MB/sec), 3.1 ms avg latency, 251.0 max latency.
5566426 records sent, 1113285.2 records/sec (5.31 MB/sec), 8.5 ms avg latency, 389.0 max latency.
6128593 records sent, 1225718.6 records/sec (5.84 MB/sec), 3.3 ms avg latency, 488.0 max latency.
16666666 records sent, 1023185.339800 records/sec (4.88 MB/sec), 9.00 ms avg latency, 488.00 ms max latency, 2 ms 50th, 104 ms 95th, 385 ms 99th, 462 ms 99.9th.


Without PX 
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 16666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5640447 records sent, 1128089.4 records/sec (5.38 MB/sec), 1.0 ms avg latency, 178.0 max latency.
6603522 records sent, 1320704.4 records/sec (6.30 MB/sec), 0.9 ms avg latency, 29.0 max latency.
16666666 records sent, 1261097.608959 records/sec (6.01 MB/sec), 1.18 ms avg latency, 178.00 ms max latency, 1 ms 50th, 1 ms 95th, 12 ms 99th, 40 ms 99.9th.

Producer 2

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 16666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
6130787 records sent, 1226157.4 records/sec (5.85 MB/sec), 0.8 ms avg latency, 114.0 max latency.
6988560 records sent, 1397712.0 records/sec (6.66 MB/sec), 0.9 ms avg latency, 17.0 max latency.
16666666 records sent, 1319818.340196 records/sec (6.29 MB/sec), 1.61 ms avg latency, 114.00 ms max latency, 1 ms 50th, 1 ms 95th, 26 ms 99th, 73 ms 99.9th.

Producer 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 16666667 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
6161205 records sent, 1232241.0 records/sec (5.88 MB/sec), 1.0 ms avg latency, 162.0 max latency.
7135392 records sent, 1427078.4 records/sec (6.80 MB/sec), 2.0 ms avg latency, 89.0 max latency.
16666667 records sent, 1328232.945489 records/sec (6.33 MB/sec), 1.88 ms avg latency, 162.00 ms max latency, 1 ms 50th, 2 ms 95th, 58 ms 99th, 90 ms 99.9th.

```


### 200 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5287477 records sent, 1057495.4 records/sec (5.04 MB/sec), 16.3 ms avg latency, 580.0 max latency.
6352134 records sent, 1270426.8 records/sec (6.06 MB/sec), 2.0 ms avg latency, 47.0 max latency.
3301712 records sent, 660342.4 records/sec (3.15 MB/sec), 78.9 ms avg latency, 1359.0 max latency.
6106847 records sent, 1221369.4 records/sec (5.82 MB/sec), 245.9 ms avg latency, 2731.0 max latency.
4976420 records sent, 995284.0 records/sec (4.75 MB/sec), 70.0 ms avg latency, 1281.0 max latency.
5920229 records sent, 1184045.8 records/sec (5.65 MB/sec), 2.4 ms avg latency, 26.0 max latency.
4998899 records sent, 999779.8 records/sec (4.77 MB/sec), 63.9 ms avg latency, 1461.0 max latency.
5419169 records sent, 1083833.8 records/sec (5.17 MB/sec), 89.5 ms avg latency, 1714.0 max latency.
4237000 records sent, 847400.0 records/sec (4.04 MB/sec), 270.8 ms avg latency, 2520.0 max latency.
5084965 records sent, 1016993.0 records/sec (4.85 MB/sec), 74.0 ms avg latency, 1361.0 max latency.
5349209 records sent, 1069841.8 records/sec (5.10 MB/sec), 76.5 ms avg latency, 1430.0 max latency.
6202560 records sent, 1240512.0 records/sec (5.92 MB/sec), 29.9 ms avg latency, 897.0 max latency.
66666666 records sent, 1066223.107187 records/sec (5.08 MB/sec), 77.34 ms avg latency, 2731.00 ms max latency, 2 ms 50th, 596 ms 95th, 1704 ms 99th, 2566 ms 99.9th.


Producer 2

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5626492 records sent, 1123500.8 records/sec (5.36 MB/sec), 13.2 ms avg latency, 606.0 max latency.
6877605 records sent, 1375521.0 records/sec (6.56 MB/sec), 36.5 ms avg latency, 350.0 max latency.
4291315 records sent, 857576.9 records/sec (4.09 MB/sec), 129.4 ms avg latency, 1789.0 max latency.
3878489 records sent, 775697.8 records/sec (3.70 MB/sec), 521.9 ms avg latency, 2729.0 max latency.
4715567 records sent, 943113.4 records/sec (4.50 MB/sec), 546.9 ms avg latency, 2491.0 max latency.
6989237 records sent, 1397847.4 records/sec (6.67 MB/sec), 384.5 ms avg latency, 2801.0 max latency.
6389643 records sent, 1277928.6 records/sec (6.09 MB/sec), 21.2 ms avg latency, 286.0 max latency.
3802866 records sent, 760573.2 records/sec (3.63 MB/sec), 685.7 ms avg latency, 2540.0 max latency.
3738669 records sent, 747733.8 records/sec (3.57 MB/sec), 999.5 ms avg latency, 3217.0 max latency.
4186429 records sent, 837285.8 records/sec (3.99 MB/sec), 709.5 ms avg latency, 3965.0 max latency.
4498594 records sent, 899718.8 records/sec (4.29 MB/sec), 1663.9 ms avg latency, 4664.0 max latency.
5923850 records sent, 1184770.0 records/sec (5.65 MB/sec), 443.5 ms avg latency, 2953.0 max latency.
5247371 records sent, 871801.1 records/sec (4.16 MB/sec), 498.9 ms avg latency, 2828.0 max latency.
66666666 records sent, 984213.210110 records/sec (4.69 MB/sec), 478.52 ms avg latency, 4664.00 ms max latency, 2 ms 50th, 2758 ms 95th, 4263 ms 99th, 4614 ms 99.9th.

Producer 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
4312974 records sent, 862594.8 records/sec (4.11 MB/sec), 20.9 ms avg latency, 597.0 max latency.
6997496 records sent, 1399499.2 records/sec (6.67 MB/sec), 2.7 ms avg latency, 130.0 max latency.
5510894 records sent, 1078241.8 records/sec (5.14 MB/sec), 2.1 ms avg latency, 888.0 max latency.
4590753 records sent, 916500.9 records/sec (4.37 MB/sec), 367.3 ms avg latency, 2727.0 max latency.
5538749 records sent, 1107749.8 records/sec (5.28 MB/sec), 64.6 ms avg latency, 1288.0 max latency.
6930430 records sent, 1383871.8 records/sec (6.60 MB/sec), 8.6 ms avg latency, 306.0 max latency.
7189168 records sent, 1437833.6 records/sec (6.86 MB/sec), 2.7 ms avg latency, 34.0 max latency.
5692574 records sent, 1138514.8 records/sec (5.43 MB/sec), 254.2 ms avg latency, 1731.0 max latency.
6099944 records sent, 1219988.8 records/sec (5.82 MB/sec), 8.7 ms avg latency, 786.0 max latency.
5657656 records sent, 1131531.2 records/sec (5.40 MB/sec), 163.3 ms avg latency, 2512.0 max latency.
6959320 records sent, 1391864.0 records/sec (6.64 MB/sec), 60.2 ms avg latency, 1321.0 max latency.
66666666 records sent, 1178939.414303 records/sec (5.62 MB/sec), 82.12 ms avg latency, 2727.00 ms max latency, 2 ms 50th, 601 ms 95th, 1806 ms 99th, 2602 ms 99.9th.


Without PX 
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 66666667 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5397646 records sent, 1079529.2 records/sec (5.15 MB/sec), 1.0 ms avg latency, 185.0 max latency.
6860716 records sent, 1370772.4 records/sec (6.54 MB/sec), 19.4 ms avg latency, 607.0 max latency.
6764673 records sent, 1352934.6 records/sec (6.45 MB/sec), 1.0 ms avg latency, 21.0 max latency.
6794178 records sent, 1358835.6 records/sec (6.48 MB/sec), 1.1 ms avg latency, 27.0 max latency.
6827427 records sent, 1365485.4 records/sec (6.51 MB/sec), 0.9 ms avg latency, 21.0 max latency.
7167459 records sent, 1433491.8 records/sec (6.84 MB/sec), 0.9 ms avg latency, 17.0 max latency.
7142216 records sent, 1428443.2 records/sec (6.81 MB/sec), 4.3 ms avg latency, 293.0 max latency.
6889690 records sent, 1377938.0 records/sec (6.57 MB/sec), 2.3 ms avg latency, 105.0 max latency.
6820620 records sent, 1364124.0 records/sec (6.50 MB/sec), 2.0 ms avg latency, 110.0 max latency.
66666667 records sent, 1352978.589114 records/sec (6.45 MB/sec), 3.47 ms avg latency, 607.00 ms max latency, 1 ms 50th, 2 ms 95th, 51 ms 99th, 519 ms 99.9th.

Producer 2

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5563767 records sent, 1063004.8 records/sec (5.07 MB/sec), 1.0 ms avg latency, 466.0 max latency.
6934039 records sent, 1386807.8 records/sec (6.61 MB/sec), 10.8 ms avg latency, 606.0 max latency.
7078799 records sent, 1415759.8 records/sec (6.75 MB/sec), 0.8 ms avg latency, 20.0 max latency.
6952284 records sent, 1390456.8 records/sec (6.63 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6629245 records sent, 1325849.0 records/sec (6.32 MB/sec), 0.8 ms avg latency, 94.0 max latency.
6866307 records sent, 1373261.4 records/sec (6.55 MB/sec), 0.7 ms avg latency, 16.0 max latency.
6711406 records sent, 1340137.0 records/sec (6.39 MB/sec), 3.5 ms avg latency, 293.0 max latency.
6784063 records sent, 1356812.6 records/sec (6.47 MB/sec), 2.3 ms avg latency, 124.0 max latency.
6904864 records sent, 1380972.8 records/sec (6.58 MB/sec), 1.5 ms avg latency, 84.0 max latency.
66666666 records sent, 1340572.411020 records/sec (6.39 MB/sec), 2.37 ms avg latency, 606.00 ms max latency, 1 ms 50th, 1 ms 95th, 18 ms 99th, 491 ms 99.9th.

Producer 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5987423 records sent, 1197484.6 records/sec (5.71 MB/sec), 13.2 ms avg latency, 594.0 max latency.
7140643 records sent, 1428128.6 records/sec (6.81 MB/sec), 1.0 ms avg latency, 24.0 max latency.
6600760 records sent, 1320152.0 records/sec (6.29 MB/sec), 1.0 ms avg latency, 25.0 max latency.
7103854 records sent, 1420770.8 records/sec (6.77 MB/sec), 1.1 ms avg latency, 27.0 max latency.
6737437 records sent, 1347487.4 records/sec (6.43 MB/sec), 0.9 ms avg latency, 23.0 max latency.
7342612 records sent, 1468522.4 records/sec (7.00 MB/sec), 4.6 ms avg latency, 293.0 max latency.
6642058 records sent, 1327349.7 records/sec (6.33 MB/sec), 1.7 ms avg latency, 84.0 max latency.
7078155 records sent, 1415631.0 records/sec (6.75 MB/sec), 1.6 ms avg latency, 110.0 max latency.
7401699 records sent, 1480339.8 records/sec (7.06 MB/sec), 1.9 ms avg latency, 84.0 max latency.
66666666 records sent, 1379177.169101 records/sec (6.58 MB/sec), 2.84 ms avg latency, 594.00 ms max latency, 1 ms 50th, 2 ms 95th, 26 ms 99th, 434 ms 99.9th.
```


### 500 mil (5KB Payload)
```
With PX replication factor = 2 (io_profile="db")
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
4924179 records sent, 984835.8 records/sec (4.70 MB/sec), 3.6 ms avg latency, 295.0 max latency.
5460147 records sent, 1092029.4 records/sec (5.21 MB/sec), 44.6 ms avg latency, 1122.0 max latency.
4564825 records sent, 912965.0 records/sec (4.35 MB/sec), 10.1 ms avg latency, 210.0 max latency.
3825269 records sent, 764900.8 records/sec (3.65 MB/sec), 127.0 ms avg latency, 1706.0 max latency.
3622200 records sent, 724440.0 records/sec (3.45 MB/sec), 126.7 ms avg latency, 1250.0 max latency.
4364712 records sent, 872942.4 records/sec (4.16 MB/sec), 36.4 ms avg latency, 1082.0 max latency.
4704282 records sent, 937481.5 records/sec (4.47 MB/sec), 15.9 ms avg latency, 165.0 max latency.
4498086 records sent, 899617.2 records/sec (4.29 MB/sec), 95.9 ms avg latency, 1153.0 max latency.
5197272 records sent, 1038001.2 records/sec (4.95 MB/sec), 7.9 ms avg latency, 200.0 max latency.
3095756 records sent, 619151.2 records/sec (2.95 MB/sec), 286.1 ms avg latency, 2671.0 max latency.
3840158 records sent, 767417.7 records/sec (3.66 MB/sec), 442.7 ms avg latency, 1755.0 max latency.
3604633 records sent, 719200.5 records/sec (3.43 MB/sec), 520.8 ms avg latency, 2029.0 max latency.
4149343 records sent, 829868.6 records/sec (3.96 MB/sec), 11.0 ms avg latency, 398.0 max latency.
5120430 records sent, 1024086.0 records/sec (4.88 MB/sec), 94.4 ms avg latency, 1589.0 max latency.
4267673 records sent, 853534.6 records/sec (4.07 MB/sec), 176.2 ms avg latency, 1381.0 max latency.
4062460 records sent, 812492.0 records/sec (3.87 MB/sec), 136.2 ms avg latency, 1389.0 max latency.
3286371 records sent, 657274.2 records/sec (3.13 MB/sec), 507.4 ms avg latency, 3560.0 max latency.
4267029 records sent, 853405.8 records/sec (4.07 MB/sec), 155.6 ms avg latency, 1453.0 max latency.
5010220 records sent, 1002044.0 records/sec (4.78 MB/sec), 16.2 ms avg latency, 532.0 max latency.
5005359 records sent, 1000871.6 records/sec (4.77 MB/sec), 18.0 ms avg latency, 440.0 max latency.
5514429 records sent, 1102885.8 records/sec (5.26 MB/sec), 3.2 ms avg latency, 29.0 max latency.
5030156 records sent, 1006031.2 records/sec (4.80 MB/sec), 90.8 ms avg latency, 1451.0 max latency.
4720315 records sent, 944063.0 records/sec (4.50 MB/sec), 7.5 ms avg latency, 234.0 max latency.
4316661 records sent, 863332.2 records/sec (4.12 MB/sec), 125.9 ms avg latency, 1825.0 max latency.
3555539 records sent, 711107.8 records/sec (3.39 MB/sec), 149.6 ms avg latency, 1419.0 max latency.
3462516 records sent, 691949.6 records/sec (3.30 MB/sec), 258.9 ms avg latency, 1172.0 max latency.
2255372 records sent, 451074.4 records/sec (2.15 MB/sec), 587.4 ms avg latency, 4567.0 max latency.
3357635 records sent, 671527.0 records/sec (3.20 MB/sec), 395.8 ms avg latency, 3156.0 max latency.
4049770 records sent, 809954.0 records/sec (3.86 MB/sec), 317.5 ms avg latency, 2952.0 max latency.
3763747 records sent, 752749.4 records/sec (3.59 MB/sec), 143.1 ms avg latency, 1286.0 max latency.
5382286 records sent, 1076457.2 records/sec (5.13 MB/sec), 32.5 ms avg latency, 877.0 max latency.
4332538 records sent, 866507.6 records/sec (4.13 MB/sec), 56.2 ms avg latency, 948.0 max latency.
4796358 records sent, 959271.6 records/sec (4.57 MB/sec), 14.3 ms avg latency, 609.0 max latency.
4504750 records sent, 900950.0 records/sec (4.30 MB/sec), 35.2 ms avg latency, 711.0 max latency.
4568672 records sent, 913734.4 records/sec (4.36 MB/sec), 45.3 ms avg latency, 1112.0 max latency.
3741875 records sent, 748375.0 records/sec (3.57 MB/sec), 339.2 ms avg latency, 2974.0 max latency.
4023859 records sent, 804771.8 records/sec (3.84 MB/sec), 170.1 ms avg latency, 1363.0 max latency.
4149376 records sent, 829875.2 records/sec (3.96 MB/sec), 144.4 ms avg latency, 1781.0 max latency.
166666666 records sent, 860024.180440 records/sec (4.10 MB/sec), 127.09 ms avg latency, 4567.00 ms max latency, 1 ms 50th, 534 ms 95th, 1148 ms 99th, 1434 ms 99.9th.


Producer 2 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5788365 records sent, 1156747.6 records/sec (5.52 MB/sec), 4.9 ms avg latency, 131.0 max latency.
7288989 records sent, 1457797.8 records/sec (6.95 MB/sec), 41.9 ms avg latency, 957.0 max latency.
5024947 records sent, 1004989.4 records/sec (4.79 MB/sec), 156.3 ms avg latency, 821.0 max latency.
5582878 records sent, 1116575.6 records/sec (5.32 MB/sec), 108.5 ms avg latency, 1689.0 max latency.
4974302 records sent, 994860.4 records/sec (4.74 MB/sec), 612.4 ms avg latency, 1953.0 max latency.
5074168 records sent, 1014833.6 records/sec (4.84 MB/sec), 450.2 ms avg latency, 3000.0 max latency.
4632885 records sent, 926577.0 records/sec (4.42 MB/sec), 911.0 ms avg latency, 4565.0 max latency.
3914991 records sent, 782998.2 records/sec (3.73 MB/sec), 2334.7 ms avg latency, 6094.0 max latency.
4721935 records sent, 944198.2 records/sec (4.50 MB/sec), 794.2 ms avg latency, 4148.0 max latency.
3388986 records sent, 677797.2 records/sec (3.23 MB/sec), 1308.0 ms avg latency, 4113.0 max latency.
4284600 records sent, 852317.5 records/sec (4.06 MB/sec), 920.3 ms avg latency, 3249.0 max latency.
4414326 records sent, 882512.2 records/sec (4.21 MB/sec), 1042.6 ms avg latency, 4974.0 max latency.
3785405 records sent, 757081.0 records/sec (3.61 MB/sec), 996.5 ms avg latency, 5895.0 max latency.
3903896 records sent, 780779.2 records/sec (3.72 MB/sec), 2688.9 ms avg latency, 6395.0 max latency.
4639879 records sent, 927975.8 records/sec (4.42 MB/sec), 784.4 ms avg latency, 3573.0 max latency.
4468093 records sent, 893618.6 records/sec (4.26 MB/sec), 1334.1 ms avg latency, 3694.0 max latency.
2673782 records sent, 533902.2 records/sec (2.55 MB/sec), 1737.1 ms avg latency, 4514.0 max latency.
5006548 records sent, 1001309.6 records/sec (4.77 MB/sec), 840.5 ms avg latency, 3186.0 max latency.
6422511 records sent, 1284502.2 records/sec (6.12 MB/sec), 304.8 ms avg latency, 2181.0 max latency.
5905140 records sent, 1181028.0 records/sec (5.63 MB/sec), 14.8 ms avg latency, 439.0 max latency.
6338680 records sent, 1267736.0 records/sec (6.05 MB/sec), 2.8 ms avg latency, 49.0 max latency.
7078812 records sent, 1415762.4 records/sec (6.75 MB/sec), 82.2 ms avg latency, 1450.0 max latency.
4825865 records sent, 965173.0 records/sec (4.60 MB/sec), 201.9 ms avg latency, 1025.0 max latency.
5893639 records sent, 1178727.8 records/sec (5.62 MB/sec), 83.7 ms avg latency, 1820.0 max latency.
5078947 records sent, 1015789.4 records/sec (4.84 MB/sec), 490.4 ms avg latency, 1606.0 max latency.
3579585 records sent, 715917.0 records/sec (3.41 MB/sec), 671.0 ms avg latency, 3299.0 max latency.
2857602 records sent, 571520.4 records/sec (2.73 MB/sec), 2248.8 ms avg latency, 5095.0 max latency.
3318695 records sent, 663075.9 records/sec (3.16 MB/sec), 1410.7 ms avg latency, 4825.0 max latency.
4970934 records sent, 994186.8 records/sec (4.74 MB/sec), 894.9 ms avg latency, 4063.0 max latency.
4452897 records sent, 888801.8 records/sec (4.24 MB/sec), 1120.5 ms avg latency, 4374.0 max latency.
5906792 records sent, 1181358.4 records/sec (5.63 MB/sec), 705.5 ms avg latency, 3730.0 max latency.
5739054 records sent, 1147351.9 records/sec (5.47 MB/sec), 380.1 ms avg latency, 1426.0 max latency.
5706271 records sent, 1141254.2 records/sec (5.44 MB/sec), 413.3 ms avg latency, 1948.0 max latency.
4754085 records sent, 950817.0 records/sec (4.53 MB/sec), 456.5 ms avg latency, 1767.0 max latency.
166666666 records sent, 976200.234288 records/sec (4.65 MB/sec), 664.37 ms avg latency, 6395.00 ms max latency, 1 ms 50th, 405 ms 95th, 2411 ms 99th, 4349 ms 99.9th.

Producer 3 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep3-async-px2 --num-records 66666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=kafka-0.broker.kafka.svc.cluster.local:9092,kafka-1.broker.kafka.svc.cluster.local:9092,kafka-2.broker.kafka.svc.cluster.local:9092 batch.size=8196
5116383 records sent, 1023276.6 records/sec (4.88 MB/sec), 31.3 ms avg latency, 967.0 max latency.
7092342 records sent, 1418468.4 records/sec (6.76 MB/sec), 7.7 ms avg latency, 212.0 max latency.
4973805 records sent, 994761.0 records/sec (4.74 MB/sec), 68.1 ms avg latency, 1732.0 max latency.
6112065 records sent, 1222413.0 records/sec (5.83 MB/sec), 86.7 ms avg latency, 1250.0 max latency.
6688038 records sent, 1337607.6 records/sec (6.38 MB/sec), 44.6 ms avg latency, 1121.0 max latency.
6701852 records sent, 1339834.5 records/sec (6.39 MB/sec), 67.2 ms avg latency, 1083.0 max latency.
5599361 records sent, 1119872.2 records/sec (5.34 MB/sec), 76.7 ms avg latency, 935.0 max latency.
7231709 records sent, 1446341.8 records/sec (6.90 MB/sec), 47.4 ms avg latency, 1151.0 max latency.
5018039 records sent, 1003607.8 records/sec (4.79 MB/sec), 57.4 ms avg latency, 1341.0 max latency.
5960939 records sent, 1192187.8 records/sec (5.68 MB/sec), 177.8 ms avg latency, 2672.0 max latency.
5845451 records sent, 1169090.2 records/sec (5.57 MB/sec), 58.2 ms avg latency, 1515.0 max latency.
6782278 records sent, 1356455.6 records/sec (6.47 MB/sec), 86.5 ms avg latency, 1345.0 max latency.
5505867 records sent, 1101173.4 records/sec (5.25 MB/sec), 171.7 ms avg latency, 1663.0 max latency.
5569646 records sent, 1113929.2 records/sec (5.31 MB/sec), 90.1 ms avg latency, 1492.0 max latency.
6460160 records sent, 1292032.0 records/sec (6.16 MB/sec), 112.5 ms avg latency, 1373.0 max latency.
5236494 records sent, 1047298.8 records/sec (4.99 MB/sec), 87.1 ms avg latency, 1391.0 max latency.
4882353 records sent, 976470.6 records/sec (4.66 MB/sec), 485.7 ms avg latency, 3563.0 max latency.
6751180 records sent, 1350236.0 records/sec (6.44 MB/sec), 148.9 ms avg latency, 1453.0 max latency.
6483389 records sent, 1296677.8 records/sec (6.18 MB/sec), 16.5 ms avg latency, 531.0 max latency.
7347994 records sent, 1469598.8 records/sec (7.01 MB/sec), 8.3 ms avg latency, 439.0 max latency.
6191352 records sent, 1238270.4 records/sec (5.90 MB/sec), 76.5 ms avg latency, 1466.0 max latency.
7175002 records sent, 1435000.4 records/sec (6.84 MB/sec), 8.0 ms avg latency, 252.0 max latency.
5415454 records sent, 1082008.8 records/sec (5.16 MB/sec), 72.8 ms avg latency, 1820.0 max latency.
6222217 records sent, 1244443.4 records/sec (5.93 MB/sec), 93.4 ms avg latency, 1439.0 max latency.
4941588 records sent, 988317.6 records/sec (4.71 MB/sec), 65.6 ms avg latency, 1144.0 max latency.
4323715 records sent, 864743.0 records/sec (4.12 MB/sec), 269.2 ms avg latency, 1366.0 max latency.
4688985 records sent, 937797.0 records/sec (4.47 MB/sec), 757.3 ms avg latency, 4566.0 max latency.
4872339 records sent, 974467.8 records/sec (4.65 MB/sec), 376.0 ms avg latency, 2951.0 max latency.
166666666 records sent, 1181320.948364 records/sec (5.63 MB/sec), 116.61 ms avg latency, 4566.00 ms max latency, 1 ms 50th, 92 ms 95th, 959 ms 99th, 1447 ms 99.9th.


Without PX 
-------------------------------------
Producer 1 

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 166666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196

5378536 records sent, 1075707.2 records/sec (5.13 MB/sec), 0.8 ms avg latency, 135.0 max latency.
6811289 records sent, 1362257.8 records/sec (6.50 MB/sec), 0.8 ms avg latency, 20.0 max latency.
6441448 records sent, 1288289.6 records/sec (6.14 MB/sec), 0.9 ms avg latency, 28.0 max latency.
6754395 records sent, 1350879.0 records/sec (6.44 MB/sec), 0.8 ms avg latency, 18.0 max latency.
7097938 records sent, 1419587.6 records/sec (6.77 MB/sec), 0.8 ms avg latency, 18.0 max latency.
6524018 records sent, 1304803.6 records/sec (6.22 MB/sec), 21.7 ms avg latency, 833.0 max latency.
7184706 records sent, 1436941.2 records/sec (6.85 MB/sec), 8.2 ms avg latency, 338.0 max latency.
6688716 records sent, 1337743.2 records/sec (6.38 MB/sec), 0.8 ms avg latency, 17.0 max latency.
6728497 records sent, 1345699.4 records/sec (6.42 MB/sec), 0.8 ms avg latency, 20.0 max latency.
7000664 records sent, 1400132.8 records/sec (6.68 MB/sec), 1.0 ms avg latency, 84.0 max latency.
6392653 records sent, 1278530.6 records/sec (6.10 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6753921 records sent, 1350784.2 records/sec (6.44 MB/sec), 66.7 ms avg latency, 1259.0 max latency.
6838994 records sent, 1367798.8 records/sec (6.52 MB/sec), 30.0 ms avg latency, 917.0 max latency.
6960252 records sent, 1392050.4 records/sec (6.64 MB/sec), 113.8 ms avg latency, 1872.0 max latency.
7048512 records sent, 1409702.4 records/sec (6.72 MB/sec), 0.8 ms avg latency, 17.0 max latency.
7450306 records sent, 1490061.2 records/sec (7.11 MB/sec), 0.7 ms avg latency, 19.0 max latency.
6725105 records sent, 1345021.0 records/sec (6.41 MB/sec), 0.8 ms avg latency, 25.0 max latency.
7311976 records sent, 1462395.2 records/sec (6.97 MB/sec), 0.7 ms avg latency, 18.0 max latency.
6323153 records sent, 1264630.6 records/sec (6.03 MB/sec), 20.8 ms avg latency, 645.0 max latency.
6770605 records sent, 1354121.0 records/sec (6.46 MB/sec), 83.1 ms avg latency, 1732.0 max latency.
6660860 records sent, 1332172.0 records/sec (6.35 MB/sec), 0.9 ms avg latency, 84.0 max latency.
6934809 records sent, 1386961.8 records/sec (6.61 MB/sec), 0.9 ms avg latency, 24.0 max latency.
6674802 records sent, 1334960.4 records/sec (6.37 MB/sec), 0.8 ms avg latency, 22.0 max latency.
6927424 records sent, 1385484.8 records/sec (6.61 MB/sec), 0.8 ms avg latency, 21.0 max latency.
166666666 records sent, 1354716.167996 records/sec (6.46 MB/sec), 14.64 ms avg latency, 1872.00 ms max latency, 1 ms 50th, 2 ms 95th, 429 ms 99th, 1171 ms 99.9th.

Producer 2

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 166666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5962105 records sent, 1192421.0 records/sec (5.69 MB/sec), 1.4 ms avg latency, 258.0 max latency.
7316874 records sent, 1463374.8 records/sec (6.98 MB/sec), 1.0 ms avg latency, 23.0 max latency.
7136529 records sent, 1427305.8 records/sec (6.81 MB/sec), 0.9 ms avg latency, 27.0 max latency.
7409667 records sent, 1481933.4 records/sec (7.07 MB/sec), 0.9 ms avg latency, 17.0 max latency.
7433551 records sent, 1486710.2 records/sec (7.09 MB/sec), 0.9 ms avg latency, 21.0 max latency.
7381573 records sent, 1476314.6 records/sec (7.04 MB/sec), 0.9 ms avg latency, 21.0 max latency.
6854870 records sent, 1370974.0 records/sec (6.54 MB/sec), 27.8 ms avg latency, 833.0 max latency.
7183541 records sent, 1436708.2 records/sec (6.85 MB/sec), 3.4 ms avg latency, 189.0 max latency.
7295460 records sent, 1459092.0 records/sec (6.96 MB/sec), 0.9 ms avg latency, 19.0 max latency.
7402068 records sent, 1480413.6 records/sec (7.06 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6869891 records sent, 1373978.2 records/sec (6.55 MB/sec), 1.2 ms avg latency, 84.0 max latency.
6237583 records sent, 1247516.6 records/sec (5.95 MB/sec), 65.4 ms avg latency, 1265.0 max latency.
7046537 records sent, 1409307.4 records/sec (6.72 MB/sec), 37.6 ms avg latency, 914.0 max latency.
6008755 records sent, 1201751.0 records/sec (5.73 MB/sec), 173.6 ms avg latency, 1881.0 max latency.
7461513 records sent, 1492302.6 records/sec (7.12 MB/sec), 0.9 ms avg latency, 24.0 max latency.
7537305 records sent, 1507461.0 records/sec (7.19 MB/sec), 0.9 ms avg latency, 27.0 max latency.
7365731 records sent, 1473146.2 records/sec (7.02 MB/sec), 0.9 ms avg latency, 29.0 max latency.
7231566 records sent, 1446313.2 records/sec (6.90 MB/sec), 0.9 ms avg latency, 20.0 max latency.
6319394 records sent, 1263878.8 records/sec (6.03 MB/sec), 0.9 ms avg latency, 24.0 max latency.
5242634 records sent, 1048526.8 records/sec (5.00 MB/sec), 144.5 ms avg latency, 1732.0 max latency.
6933483 records sent, 1386696.6 records/sec (6.61 MB/sec), 2.7 ms avg latency, 118.0 max latency.
6501176 records sent, 1296604.7 records/sec (6.18 MB/sec), 0.9 ms avg latency, 23.0 max latency.
7389764 records sent, 1477952.8 records/sec (7.05 MB/sec), 1.0 ms avg latency, 25.0 max latency.
166666666 records sent, 1391312.085215 records/sec (6.63 MB/sec), 16.93 ms avg latency, 1881.00 ms max latency, 1 ms 50th, 2 ms 95th, 389 ms 99th, 1212 ms 99.9th.

Producer 3

bin/kafka-run-class.sh org.apache.kafka.tools.ProducerPerformance --topic kbrep-asyncrep3 --num-records 166666666 --record-size 5 --throughput -1 --producer-props acks=1 bootstrap.servers=70.0.0.84:9092,70.0.0.86:9092,70.0.0.87:9092 batch.size=8196
5761198 records sent, 1152239.6 records/sec (5.49 MB/sec), 0.9 ms avg latency, 170.0 max latency.
6776498 records sent, 1355299.6 records/sec (6.46 MB/sec), 0.9 ms avg latency, 28.0 max latency.
7544588 records sent, 1508917.6 records/sec (7.20 MB/sec), 0.9 ms avg latency, 16.0 max latency.
7525871 records sent, 1505174.2 records/sec (7.18 MB/sec), 1.0 ms avg latency, 25.0 max latency.
7258324 records sent, 1451664.8 records/sec (6.92 MB/sec), 1.0 ms avg latency, 33.0 max latency.
6608573 records sent, 1321714.6 records/sec (6.30 MB/sec), 33.8 ms avg latency, 834.0 max latency.
7099646 records sent, 1419929.2 records/sec (6.77 MB/sec), 0.9 ms avg latency, 28.0 max latency.
7377555 records sent, 1475511.0 records/sec (7.04 MB/sec), 0.9 ms avg latency, 19.0 max latency.
7064868 records sent, 1412973.6 records/sec (6.74 MB/sec), 0.9 ms avg latency, 26.0 max latency.
6647641 records sent, 1328996.6 records/sec (6.34 MB/sec), 1.2 ms avg latency, 84.0 max latency.
6456962 records sent, 1291392.4 records/sec (6.16 MB/sec), 62.9 ms avg latency, 1270.0 max latency.
6893616 records sent, 1378723.2 records/sec (6.57 MB/sec), 37.0 ms avg latency, 914.0 max latency.
6318087 records sent, 1263617.4 records/sec (6.03 MB/sec), 169.4 ms avg latency, 1870.0 max latency.
7014381 records sent, 1402876.2 records/sec (6.69 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6575134 records sent, 1315026.8 records/sec (6.27 MB/sec), 0.9 ms avg latency, 22.0 max latency.
7190263 records sent, 1438052.6 records/sec (6.86 MB/sec), 0.9 ms avg latency, 25.0 max latency.
6989897 records sent, 1397979.4 records/sec (6.67 MB/sec), 0.9 ms avg latency, 27.0 max latency.
6613205 records sent, 1322641.0 records/sec (6.31 MB/sec), 13.7 ms avg latency, 654.0 max latency.
5990548 records sent, 1196434.6 records/sec (5.71 MB/sec), 132.7 ms avg latency, 1733.0 max latency.
6838501 records sent, 1367700.2 records/sec (6.52 MB/sec), 2.2 ms avg latency, 118.0 max latency.
6570134 records sent, 1314026.8 records/sec (6.27 MB/sec), 0.9 ms avg latency, 27.0 max latency.
6818136 records sent, 1361448.9 records/sec (6.49 MB/sec), 1.0 ms avg latency, 30.0 max latency.
7311636 records sent, 1462327.2 records/sec (6.97 MB/sec), 0.9 ms avg latency, 34.0 max latency.
6679296 records sent, 1335859.2 records/sec (6.37 MB/sec), 0.8 ms avg latency, 21.0 max latency.
1831823 records sent, 364614.5 records/sec (1.74 MB/sec), 8.9 ms avg latency, 5026.0 max latency.
166666666 records sent, 1326985.031609 records/sec (6.33 MB/sec), 40.05 ms avg latency, 5028.00 ms max latency, 1 ms 50th, 58 ms 95th, 1332 ms 99th, 1791 ms 99.9th.


```


