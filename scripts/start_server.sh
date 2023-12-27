#!/bin/bash

# Define the image name and tag
IMAGE_NAME="gopal71/employee_info"
IMAGE_TAG="v1"  # You can dynamically set this value based on your requirements

# Combine the image name and tag
IMAGE="$IMAGE_NAME:$IMAGE_TAG"

# Pull the image from Docker Hub
docker pull "$IMAGE"

# Start the container
docker run -p 80:80 "$IMAGE"
