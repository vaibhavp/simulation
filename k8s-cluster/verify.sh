#!/bin/bash
var=`kubectl get nodes node01 -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}'`
if [[ $var == "True" ]]; then
    echo "done"
fi