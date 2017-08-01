### Cluster State Before k8s-1 was deleted:
-------------------------------------------------------
```
$ kubectl get pods -l app=cassandra -o json | jq '.items[] | {"name": .metadata.name,"hostname": .spec.nodeName, "hostIP": .status.hostIP, "PodIP": tatus.podIP}'

{
  "name": "cassandra-0",
  "hostname": "k8s-5",
  "hostIP": "10.140.0.8",
  "PodIP": "10.0.112.1"
}
{
  "name": "cassandra-1",
  "hostname": "k8s-2",
  "hostIP": "10.140.0.4",
  "PodIP": "10.0.192.2"
}
{
  "name": "cassandra-2",
  "hostname": "k8s-1",
  "hostIP": "10.140.0.5",
  "PodIP": "10.0.64.3"
}
{
  "name": "cassandra-3",
  "hostname": "k8s-3",
  "hostIP": "10.140.0.6",
  "PodIP": "10.0.240.1"
}
{
  "name": "cassandra-4",
  "hostname": "k8s-4",
  "hostIP": "10.140.0.7",
  "PodIP": "10.0.128.1"
}

$ kubectl get nodes --show-labels (Some of the tags and colums are removed for brevity)

k8s-0        Read          cassandra-data-cassandra-1=true,cassandra-data-cassandra-3=true
k8s-1        Ready         cassandra-data-cassandra-1=true,cassandra-data-cassandra-4=true
k8s-2        Ready         cassandra-data-cassandra-0=true,cassandra-data-cassandra-2=true
k8s-3        Ready         cassandra-data-cassandra-3=true
k8s-4        Ready         cassandra-data-cassandra-4=true
k8s-5        Ready         
k8s-master   Ready         cassandra-data-cassandra-0=true,cassandra-data-cassandra-2=true
```

### Cluster State After k8s-1 was deleted:
-------------------------------------------------------

```
$ kubectl get pods -l app=cassandra -o json | jq '.items[] | {"name": .metadata.name,"hostname": .spec.nodeName, "hostIP": .status.hostIP, "PodIP": .status.podIP}'

{
  "name": "cassandra-0",
  "hostname": "k8s-5",
  "hostIP": "10.140.0.8",
  "PodIP": "10.0.112.1"
}
{
  "name": "cassandra-1",
  "hostname": "k8s-2",
  "hostIP": "10.140.0.4",
  "PodIP": "10.0.192.2"
}
{
  "name": "cassandra-2",
  "hostname": "k8s-0",
  "hostIP": "10.140.0.3",
  "PodIP": "10.0.160.2"
}
{
  "name": "cassandra-3",
  "hostname": "k8s-3",
  "hostIP": "10.140.0.6",
  "PodIP": "10.0.240.1"
}
{
  "name": "cassandra-4",
  "hostname": "k8s-4",
  "hostIP": "10.140.0.7",
  "PodIP": "10.0.128.1"
}

$ kubectl get nodes --show-labels (Some of the tags and colums are removed for brevity)

k8s-0        Ready         cassandra-data-cassandra-1=true,cassandra-data-cassandra-3=true
k8s-2        Ready         cassandra-data-cassandra-0=true,cassandra-data-cassandra-2=true
k8s-3        Ready         cassandra-data-cassandra-3=true
k8s-4        Ready         cassandra-data-cassandra-4=true
k8s-5        Ready               
k8s-master   Ready         cassandra-data-cassandra-0=true,cassandra-data-cassandra-2=true
```

Since k8s-1 node was the one which had attached volumes for ```cassandra-data-cassandra-1``` and ```cassandra-data-cassandra-4``` let us inspect the volumes with ```pxctl```

```
$ kubectl get pvc

NAME                         STATUS    VOLUME                                     CAPACITY   ACCESSMODES   STORAGECLASS   AGE
cassandra-data-cassandra-0   Bound     pvc-8a1bb3db-75f0-11e7-9b1e-42010a8c0002   3Gi        RWO           portworx-sc    22h
cassandra-data-cassandra-1   Bound     pvc-a945c138-75f0-11e7-9b1e-42010a8c0002   3Gi        RWO           portworx-sc    22h
cassandra-data-cassandra-2   Bound     pvc-c6a6a6a0-75f0-11e7-9b1e-42010a8c0002   3Gi        RWO           portworx-sc    22h
cassandra-data-cassandra-3   Bound     pvc-17bf536d-75fa-11e7-9b1e-42010a8c0002   3Gi        RWO           portworx-sc    21h
cassandra-data-cassandra-4   Bound     pvc-6fdee4c4-761a-11e7-9b1e-42010a8c0002   3Gi        RWO           portworx-sc    17h
```

```
$ /opt/pwx/bin/pxctl status

Status: PX is operational
License: Trial (expires in 29 days)
Node ID: k8s-master
        IP: 10.140.0.2
        Local Storage Pool: 1 pool
        POOL    IO_PRIORITY     RAID_LEVEL      USABLE  USED    STATUS  ZONE    REGION
        0       MEDIUM          raid0           10 GiB  471 MiB Online  default default
        Local Storage Devices: 1 device
        Device  Path            Media Type              Size            Last-Scan
        0:1     /dev/sdb        STORAGE_MEDIUM_SSD      10 GiB          01 Aug 17 09:19 UTC
        total                   -                       10 GiB
Cluster Summary
        Cluster ID: px-cluster
        Cluster UUID: d2ebd5cf-9652-47d7-ac95-d4ccbd416a6a
        IP              ID              Used            Capacity        Status
        10.140.0.7      k8s-4           358 MiB         10 GiB          Online
        10.140.0.8      k8s-5           410 MiB         10 GiB          Online
        10.140.0.3      k8s-0           481 MiB         10 GiB          Online
        10.140.0.5      k8s-1           Unavailable     Unavailable     Offline
        10.140.0.4      k8s-2           471 MiB         10 GiB          Online
        10.140.0.2      k8s-master      471 MiB         10 GiB          Online (This node)
        10.140.0.6      k8s-3           512 MiB         10 GiB          Online
Global Storage Pool
        Total Used      :  3.1 GiB
        Total Capacity  :  70 GiB
```

```
$ /opt/pwx/bin/pxctl v l
ID                      NAME                                            SIZE    HA      SHARED  ENCRYPTED       IO_PRIORITY     SCALE   STATUS
62243813929201724       pvc-17bf536d-75fa-11e7-9b1e-42010a8c0002        3 GiB   2       no      no              MEDIUM          0       up - attached on 10.140.0.6
420969602352066538      pvc-6fdee4c4-761a-11e7-9b1e-42010a8c0002        3 GiB   2       no      no              MEDIUM          0       up - attached on 10.140.0.7
755750121048710764      pvc-8a1bb3db-75f0-11e7-9b1e-42010a8c0002        3 GiB   2       no      no              MEDIUM          0       up - attached on 10.140.0.8 *
144531132448345936      pvc-a945c138-75f0-11e7-9b1e-42010a8c0002        3 GiB   2       no      no              MEDIUM          0       up - attached on 10.140.0.4 *
690634791435565486      pvc-c6a6a6a0-75f0-11e7-9b1e-42010a8c0002        3 GiB   2       no      no              MEDIUM          0       up - attached on 10.140.0.3 *
```

Inspect the volume for ```cassandra-data-cassandra-1``` and ```cassandra-data-cassandra-4``` since these were the replicas attached to the node ```k8s-1``` before it was deleted. 

```cassandra-data-cassandra-1``` still shows the replica sets on a nodeIP (10.140.0.5) which no longer exists. 

```
$ /opt/pwx/bin/pxctl v i pvc-a945c138-75f0-11e7-9b1e-42010a8c0002

Volume  :  144531132448345936
        Name                     :  pvc-a945c138-75f0-11e7-9b1e-42010a8c0002
        Size                     :  3.0 GiB
        Format                   :  ext4
        HA                       :  2
        IO Priority              :  MEDIUM
        Creation time            :  Jul 31 13:03:35 UTC 2017
        Shared                   :  no
        Status                   :  up
        State                    :  Attached: k8s-2
        Device Path              :  /dev/pxd/pxd144531132448345936
        Labels                   :  pvc=cassandra-data-cassandra-1
        Reads                    :  341
        Reads MS                 :  124
        Bytes Read               :  1822720
        Writes                   :  2533
        Writes MS                :  75736
        Bytes Written            :  27758592
        IOs in progress          :  0
        Bytes used               :  67 MiB
        Replica sets on nodes:
                Set  0
                        Node     :  10.140.0.3
                        Node     :  10.140.0.5 
```

Same is the case with cassandra-data-cassandra-4

```
$ /opt/pwx/bin/pxctl v i pvc-6fdee4c4-761a-11e7-9b1e-42010a8c0002

Volume  :  420969602352066538
        Name                     :  pvc-6fdee4c4-761a-11e7-9b1e-42010a8c0002
        Size                     :  3.0 GiB
        Format                   :  ext4
        HA                       :  2
        IO Priority              :  MEDIUM
        Creation time            :  Jul 31 18:02:37 UTC 2017
        Shared                   :  no
        Status                   :  up
        State                    :  Attached: k8s-4
        Device Path              :  /dev/pxd/pxd420969602352066538
        Labels                   :  pvc=cassandra-data-cassandra-4
        Reads                    :  68
        Reads MS                 :  96
        Bytes Read               :  577536
        Writes                   :  9321
        Writes MS                :  104468
        Bytes Written            :  159490048
        IOs in progress          :  0
        Bytes used               :  68 MiB
        Replica sets on nodes:
                Set  0
                        Node     :  10.140.0.5
                        Node     :  10.140.0.7
```