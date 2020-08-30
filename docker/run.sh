#!/usr/bin/env bash

set -e

DOCKER_IMAGE=yarn-geyser
CONTAINER_NAME=yarn-geyser

docker build -t $DOCKER_IMAGE -f docker/Dockerfile .

set +e
docker container rm $CONTAINER_NAME
set -e

docker run -it \
    --name $CONTAINER_NAME \
    --net host \
    $DOCKER_IMAGE $@
#    --volume `pwd`/:/code/:rw \
#    --rm \

#docker container rm $CONTAINER_NAME
