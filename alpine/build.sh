#!/bin/bash

REGISTRY=registry.cubetiqs.com
CONTAINER=onedraw
TAG=0.1-alpine
ROOT_CONTAINER=$REGISTRY/$CONTAINER:$TAG

echo "Building image..."
docker build . -t $ROOT_CONTAINER

echo "Pushing image to $ROOT_CONTAINER"
docker push $ROOT_CONTAINER
