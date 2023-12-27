#!/bin/bash

# Define the Docker image name
IMAGE_NAME="gopal71/employee_info"
IMAGE_TAG="v1"  # Update with the appropriate tag

# Combine the image name and tag
IMAGE="$IMAGE_NAME:$IMAGE_TAG"

# Fetch the running container ID based on the image name
CONTAINER_ID=$(docker ps -q --filter ancestor="$IMAGE")

if [ -n "$CONTAINER_ID" ]; then
  # Stop and remove the running container
  docker stop "$CONTAINER_ID" && docker rm "$CONTAINER_ID"
else
  echo "No running container found for image: $IMAGE"
fi
