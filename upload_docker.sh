#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=e596aaaa7545/ml-microservice-api:v1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ml-microservice-api:latest $dockerpath
docker login -u  e596aaaa7545 --password=sucmanh123@@@

# Step 3:
# Push image to a docker repository
docker push $dockerpath

$SHELL