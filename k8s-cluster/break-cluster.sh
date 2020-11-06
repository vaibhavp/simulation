#!/bin/bash

kubectl get nodes 
echo "yes" | ssh node01
service kubelet stop
sleep 10
exit
kubectl get nodes 
