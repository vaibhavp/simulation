#!/bin/bash 
set -x
ssh -o StrictHostKeyChecking=no node01 'service kubelet stop'
