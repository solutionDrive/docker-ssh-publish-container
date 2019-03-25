#!/usr/bin/env bash

set -e

DOCKER_CONTAINER_ID=`docker run -it -d solutiondrive/docker-ssh-publish-container:latest sh`
bundle exec inspec exec tests/inspec/publish-container -t docker://${DOCKER_CONTAINER_ID}
docker stop ${DOCKER_CONTAINER_ID}
