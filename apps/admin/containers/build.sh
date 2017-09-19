#!/bin/bash
DOCKER_TAG='latest'
IMAGE_NAME=theopenbit/rpi_whack_a_pod_admin
if [ -n "$TRAVIS_TAG" ]; then DOCKER_TAG=$TRAVIS_TAG; fi
docker build -t $IMAGE_NAME:$DOCKER_TAG .
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
docker push $IMAGE_NAME:$DOCKER_TAG
