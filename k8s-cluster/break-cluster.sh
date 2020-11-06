#!/bin/bash

kubectl get nodes 
ssh node01
service kubelet stop
echo "exit"
kubectl get nodes 
