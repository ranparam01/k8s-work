    #!/bin/bash
    
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

    clusterName=$(curl -XGET http://$result:9001/v1/cluster/enumerate | jq '.["Id"]+"-"+.["UID"]') 
    echo $clusterName
    sed -i "s/#indexUUID#=$clusterName" /tmp/fluent.conf