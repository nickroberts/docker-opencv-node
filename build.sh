#!/bin/bash

# TODO: Parse options. e.g. --node-major-version=11
IMAGE=ubuntu:18.04
NODE_MAJOR_VERSION=10
OPENCV_VERSION=3.4.5
WITH_CONTRIB

TAG=latest
IMAGE_NAME=djparadyme/opencv-node:$TAG

echo Building $IMAGE_NAME

docker build --no-cache -t $IMAGE_NAME \
  --build-arg IMAGE=$IMAGE \
  --build-arg NODE_MAJOR_VERSION=$NODE_MAJOR_VERSION \
  --build-arg OPENCV_VERSION=$OPENCV_VERSION \
  --build-arg WITH_CONTRIB=$WITH_CONTRIB \
  .
