#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=esanolad/ml-microservice-app:v1.2.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy ml-predict  --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
podname=$(kubectl get pods -o=name | grep ml-predict)

# Step 4:
# Forward the container port to a host
echo "waiting for 5 seconds before foarwarding container to host.."
sleep 5
kubectl get pods
kubectl port-forward $podname --address 0.0.0.0 8000:80
