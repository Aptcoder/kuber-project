#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=aptcoder/kuber-project:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy kuber-project --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo "POD wih name $POD_NAME created"
kubectl port-forward pod/$POD_NAME --address 0.0.0.0 8000:80