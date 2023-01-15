#!/bin/bash

DOCKER_USER=$1

docker build -t nginx_proxy . -f ./Dockerfile.proxy
docker tag nginx_proxy $DOCKER_USER/nginx_proxy
docker push $DOCKER_USER/nginx_proxy
echo "nginx_proxy docker image successfully deployed to docker hub"

# applying reverse proxy to our kub cluster
