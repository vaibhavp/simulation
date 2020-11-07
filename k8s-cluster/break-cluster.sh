#!/bin/bash

kubectl get nodes 
ssh -oStrictHostKeyChecking=no node01
service kubelet stop
sleep 10
exit
kubectl get nodes 
