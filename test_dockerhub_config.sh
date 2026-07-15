#!/bin/bash

set -a; source .env; set +a
echo "$DOCKERHUB_PAT" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker logout