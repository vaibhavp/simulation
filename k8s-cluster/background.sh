#!/bin/bash 
set -x
ssh -o StrictHostKeyChecking=no node01 'service kubelet stop'
do
    var=`kubectl get nodes node01 -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}'`
    if [[ $var != "True" ]];then
        touch /tmp/done 
        break
    fi
done