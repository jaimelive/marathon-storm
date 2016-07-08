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

docker push $DOCKER_USER/$BASE_OS_IMAGE

for IMAGE in "${DOCKER_IMAGES[@]}"
do
	docker push $DOCKER_USER/$IMAGE:$STORM_VERSION 
done
