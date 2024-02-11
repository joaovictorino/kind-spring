#!/bin/bash

# Create cluster
kind create cluster

# Deploy application
kubectl apply -f k8s/1-config
kubectl apply -f k8s/2-db
kubectl apply -f k8s/3-app

# Access application
kubectl get svc -n aulainfra
kubectl get nodes -o wide
