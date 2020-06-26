#!/bin/bash

REGISTRY=registry.cubetiqs.com
CONTAINER=onedraw
TAG=0.1-alpine
ROOT_CONTAINER=$REGISTRY/$CONTAINER:$TAG
PUBLIC_DNS=onedraw.cubetiqs.com

echo "Pulling image from $ROOT_CONTAINER"
docker pull $ROOT_CONTAINER

echo "Running container..."
docker run -it --name=$CONTAINER -p 7892:8080 -p 7893:8443 -e PUBLIC_DNS=$PUBLIC_DNS --restart always $ROOT_CONTAINER