#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker buildx build --platform=linux/amd64 --tag esanolad/flaskapp .
# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d --name ml-app -p 8000:80 esanolad/flaskapp