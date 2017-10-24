#!/bin/sh

#set -x
echo "Initializing..."
svcname=$1
echo $svcname

result=$(nslookup $svcname | grep $svcname | grep Address | awk '{print $3}' | grep -oE ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$)
echo "ClusterIP : $result"

while [[ "$result" = "" ]]
do
 echo "Waiting... Did not find the clusterIP"
 sleep 1
 result=$(nslookup $svcname | grep $svcname | grep Address | awk '{print $3}' | grep -oE ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ | tr -d '\n')
done

pxClusterStatus=$(curl -XGET http://$result:9001/v1/cluster/enumerate)

while [[ "$pxClusterStatus" = "" ]]
do
 echo "Waiting... looks like the px pods arent ready yet"
 sleep 1
 pxClusterStatus=$(curl -XGET http://$result:9001/v1/cluster/enumerate)
done

echo $pxClusterStatus
echo $pxClusterStatus >> /usr/bin/clusterState

indexID=$(echo $pxClusterStatus | jq '.["Id"]+"-"+.["UID"]')
echo $indexID

cat /tmp/fluent.conf

sed -i "s/#indexUUID#/$indexID/g" /tmp/fluent.conf
