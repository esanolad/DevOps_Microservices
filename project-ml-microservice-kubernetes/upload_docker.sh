#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=flaskapp

# Step 2:  
# Authenticate & tag
docker login
echo "Docker ID and Image: $dockerpath"
docker tag $dockerpath esanolad/ml-microservice-app:v1.2.0

# Step 3:
# Push image to a docker repository
docker image push esanolad/ml-microservice-app:v1.2.0
