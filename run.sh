#!/bin/sh
#

# define port to use
PORT=2222

# image
IMAGE_NAME=clion-epitech-docker

# build the docker image if it does not exist
if [[ "$(docker images -q $IMAGE_NAME 2> /dev/null)" == "" ]]; then
  docker build -t $IMAGE_NAME -f Dockerfile .
fi

# run the docker container
docker run --rm -d --cap-add sys_ptrace -p127.0.0.1:$PORT:22 --name clion_remote_env_epitech $IMAGE_NAME

# clear ssh keys if there was another ssh server on the same port
ssh-keygen -f "$HOME/.ssh/known_hosts" -R "[localhost]:$PORT"
