# clion-epitech-docker

Epitech environment in a docker container to be used inside CLion.

Image size: 5.02 GB.

## requirements

- [CLion](https://www.jetbrains.com/clion)
- [Docker](https://www.docker.com/get-started)

## instructions

**Note**: Please do this before opening any project you want to use with the epitech environment.

Clone the repository and run the script `run.sh`: it will download, build and start the docker image.

Setup CLion to use the container by following the instructions from the [CLion help](https://www.jetbrains.com/help/clion/clion-toolchains-in-docker.html#40daafad) with these options:

- host `localhost`
- port `2222`
- username `user`
- password `password`

Stop the container with `docker stop clion_remote_env_epitech`.

To run the container again, simply run the `run.sh` script again.