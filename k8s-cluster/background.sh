#!/bin/bash 
ssh -o StrictHostKeyChecking=no node01 'service kubelet stop'
while true
do
    sleep 10
    var=`kubectl get nodes node01 -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}'`
    if [[ $var != "True" ]];then
        touch /tmp/done 
        break
    fi
done