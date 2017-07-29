# Deploying Cassandra with Portworx on Kubernetes. 

Kubernetes provides management of stateful workloads using Statefulsets. Cassandra is a distributed database and in this guide we will deploy a containerized [Cassandra cluster with Portworx](https://docs.portworx.com/applications/cassandra.html#advantages-of-cassandra-with-portworx) for volume management at the backend. 

## Getting Started

These below instructions will provide you a step by step guide in deploying Cassandra with Portworx on Kubernetes. 

## Prerequisites

-	A running Kubernetes cluster with v 1.6+ 
-	All the kubernetes nodes should allow [shared volume propagation](https://docs.portworx.com/knowledgebase/shared-mount-propogation.html). PX requires this since it provisions volumes in containers.  
-	[Deploy Portworx on your kubernetes cluster](https://docs.portworx.com/scheduler/kubernetes/install.html). PX runs on each node of your kubernetes cluster as a daemonset. 

## Install

A statefulset in Kubernetes requires a headless service to provide network identity to the pods it creates. 
The following command and the spec will help you create a headless service for your Cassandra installation. 

Create a ```cassandra-headless-service.yml``` with the following content. 
```
apiVersion: v1
kind: Service
metadata:
  labels:
    app: cassandra
  name: cassandra
spec:
  clusterIP: None
  ports:
    - port: 9042
  selector:
    app: cassandra
```

Apply the configuration.

```$ kubectl apply -f cassandra-headless-service.yml```

This example dynamically provisions Portworx volumes using StorageClass API resource. [PersistentVolumeClaims with Portworx Volume](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#portworx-volume)

Create a ```px-storageclass.yml``` with the following content.
```
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: px-storageclass
provisioner: kubernetes.io/portworx-volume
parameters:
  repl: "2"
  priority_io: "high"

```
Apply the configuration

```$ kubectl apply -f px-storageclass.yml```

Create the Statefulset for Cassandra with 3 replicas. 
The PodSpec in the statefulset specifies the container image of Cassandra. Statefulsets ensures a sticky and unique identity to the pods. The ordinal index ensures this identity to the Pods.  

Create a ```cassandra-statefulset.yml``` with the following content
```
apiVersion: "apps/v1beta1"
kind: StatefulSet
metadata:
  name: cassandra
spec:
  serviceName: cassandra
  replicas: 2
  template:
    metadata:
      labels:
        app: cassandra
    spec:
      containers:
      - name: cassandra
        image: gcr.io/google-samples/cassandra:v11
        imagePullPolicy: Always
        ports:
        - containerPort: 7000
          name: intra-node
        - containerPort: 7001
          name: tls-intra-node
        - containerPort: 7199
          name: jmx
        - containerPort: 9042
          name: cql
        resources:
          limits:
            cpu: "500m"
            memory: 1Gi
          requests:
           cpu: "500m"
           memory: 1Gi
        securityContext:
          capabilities:
            add:
              - IPC_LOCK
        lifecycle:
          preStop:
            exec:
              command: ["/bin/sh", "-c", "PID=$(pidof java) && kill $PID && while ps -p $PID > /dev/null; do sleep 1; done"]
        env:
          - name: MAX_HEAP_SIZE
            value: 512M
          - name: HEAP_NEWSIZE
            value: 100M
          - name: CASSANDRA_SEEDS
            value: "cassandra-0.cassandra.default.svc.cluster.local"
          - name: CASSANDRA_CLUSTER_NAME
            value: "K8Demo"
          - name: CASSANDRA_DC
            value: "DC1-K8Demo"
          - name: CASSANDRA_RACK
            value: "Rack1-K8Demo"
          - name: CASSANDRA_AUTO_BOOTSTRAP
            value: "false"
          - name: POD_IP
            valueFrom:
              fieldRef:
                fieldPath: status.podIP
          - name: POD_NAMESPACE
            valueFrom:
              fieldRef:
                fieldPath: metadata.namespace
        readinessProbe:
          exec:
            command:
            - /bin/bash
            - -c
            - /ready-probe.sh
          initialDelaySeconds: 15
          timeoutSeconds: 5
        # These volume mounts are persistent. They are like inline claims,
        # but not exactly because the names need to match exactly one of
        # the stateful pod volumes.
        volumeMounts:
        - name: cassandra-data
          mountPath: /cassandra_data
  # These are converted to volume claims by the controller
  # and mounted at the paths mentioned above.
  volumeClaimTemplates:
  - metadata:
      name: cassandra-data
      annotations:
        volume.beta.kubernetes.io/storage-class: px-storageclass
    spec:
      accessModes: [ "ReadWriteOnce" ]
      resources:
        requests:
          storage: 1Gi
```

Apply the configuration 

```$ kubectl apply -f cassandra-statefulset.yml```

## Post Install status

Verify that the PVC is bound to a volume using the storage class. 

```$ kubectl get pvc```
```
 NAME                         STATUS    VOLUME                                     CAPACITY   ACCESSMODES   STORAGECLASS   AGE
 cassandra-data-cassandra-0   Bound     pvc-e6924b73-72f9-11e7-9d23-42010a8e0002   1Gi        RWO           portworx-sc    2m
 cassandra-data-cassandra-1   Bound     pvc-49e8caf6-735d-11e7-9d23-42010a8e0002   1Gi        RWO           portworx-sc    2m
 cassandra-data-cassandra-2   Bound     pvc-603d4f95-735d-11e7-9d23-42010a8e0002   1Gi        RWO           portworx-sc    1m
```

Verify that the cassandra cluster is created 

```kubectl exec cassandra-0 -- nodetool status```

```
Datacenter: DC1-K8Demo
======================
Status=Up/Down
|/ State=Normal/Leaving/Joining/Moving
--  Address     Load       Tokens       Owns (effective)  Host ID                               Rack
UN  10.0.160.2  164.39 KiB  32           62.3%             ce3b48b8-1655-48a2-b167-08d03ca6bc41  Rack1-K8Demo
UN  10.0.64.2   190.76 KiB  32           64.1%             ba31128d-49fa-4696-865e-656d4d45238e  Rack1-K8Demo
UN  10.0.192.3  104.55 KiB  32           73.6%             c778d78d-c6bc-4768-a3ec-0d51ba066dcb  Rack1-K8Demo
```

Verify that the storageclass is created. 

```$ kubectl get storageclass```
```
NAME                 TYPE
portworx-sc          kubernetes.io/portworx-volume 
```

```$ kubectl get pods```
```
NAME          READY     STATUS    RESTARTS   AGE
cassandra-0   1/1       Running   0          1m
cassandra-1   1/1       Running   0          1m
cassandra-2   0/1       Running   0          47s
```

```$ /opt/pwx/bin/pxctl v l```
```
ID                      NAME                                            SIZE    HA      SHARED  ENCRYPTED       IO_PRIORITY     SCALE   STATUS
651254593135168442      pvc-49e8caf6-735d-11e7-9d23-42010a8e0002        1 GiB   2       no      no              LOW             0       up - attached on 10.142.0.3
136016794033281980      pvc-603d4f95-735d-11e7-9d23-42010a8e0002        1 GiB   2       no      no              LOW             0       up - attached on 10.142.0.4
752567898197695962      pvc-e6924b73-72f9-11e7-9d23-42010a8e0002        1 GiB   2       no      no              LOW             0       up - attached on 10.142.0.5
```

## Scaling
 WIP

## Failovers
### Pod Failover
WIP
### Node Failover
WIP 

## See Also
For further reading on Cassandra:
* [Cassandra Docker](https://portworx.com/use-case/cassandra-docker-container/) How to run Cassandra in Docker containers
* [Run multiple Cassandra rings on the same hosts](https://portworx.com/run-multiple-cassandra-clusters-hosts/)
* [Cassandra stress test with Portworx](https://docs.portworx.com/applications/cassandra-px-perf-test.html)
