#!/bin/bash

DOCKER_USER=jaimelive
STORM_VERSION="1.0.1"

BASE_OS_IMAGE=alpine-java-python
DOCKER_IMAGES=(
	storm-base
	storm-nimbus
	storm-supervisor
	storm-ui
) 

docker build -q -t $DOCKER_USER/$BASE_OS_IMAGE $BASE_OS_IMAGE
if [ $? -eq 0 ]; then
    echo -e "\e[32m» $BASE_OS_IMAGE: OK\e[0m"
else
    echo -e "\e[31m» $BASE_OS_IMAGE: FAILED"
    exit
fi

for IMAGE in "${DOCKER_IMAGES[@]}"
do
	docker build -q --build-arg STORM_VERSION=${STORM_VERSION} -t $DOCKER_USER/$IMAGE:$STORM_VERSION $IMAGE
	if [ $? -eq 0 ]; then
	    echo -e "\e[32m» $IMAGE: OK\e[0m"
	else
	    echo -e "\e[31m» $IMAGE: FAILED"
	    exit
	fi
done
