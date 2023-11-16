#!/bin/bash
time kops validate cluster --wait 10m
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl apply -f sc.yaml
