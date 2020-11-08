#!/bin/bash
set -x
echo "Waiting to complete"; 
while true
do
    var=`kubectl get nodes node01 -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}'`
    if [[ $var != "True" ]];then
        touch /tmp/done 
        break
    fi
done