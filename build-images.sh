#!/bin/bash

DOCKER_USER=jaimelive
STORM_VERSION="1.0.1"

BASE_OS_IMAGE=alpine-java-python
DOCKER_IMAGES=(
	alpine-java-python
	storm-base
	storm-nimbus
	storm-supervisor
	storm-ui
) 

docker build -t $DOCKER_USER/$BASE_OS_IMAGE $BASE_OS_IMAGE

for IMAGE in "${DOCKER_IMAGES[@]}"
do
	docker build --build-arg STORM_VERSION=${STORM_VERSION} -t $DOCKER_USER/$IMAGE:$STORM_VERSION $IMAGE
done
