#!/bin/sh
#

# define port to use
PORT=2222

# build the docker image
docker build -t clion-epitech-docker -f Dockerfile .

# run the docker container
docker run --rm -d --cap-add sys_ptrace -p127.0.0.1:$PORT:22 --name clion_remote_env_epitech clion-epitech-docker

# clear ssh keys if there was another ssh server on the same port
ssh-keygen -f "$HOME/.ssh/known_hosts" -R "[localhost]:$PORT"
