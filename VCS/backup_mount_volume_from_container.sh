#!/usr/bin/env bash

# $1: container name (ex: woosterwordpress_nginx_1)
# $2: mount path (ex: /var/www/html)

DOCKER_CONTAINER=$1
DOCKER_MOUNT=$2

# url: https://docs.docker.com/engine/tutorials/dockervolumes/#creating-and-mounting-a-data-volume-container
docker run --rm 								\
	--volumes-from $DOCKER_CONTAINER			\
	-v $(pwd):/backup 							\
	ubuntu 										\
	cp -r $DOCKER_MOUNT /backup/.
	# tar cvf /backup/backup.tar $DOCKER_MOUNT

cp WordPress.gitignore html/.gitignore

cd html

git init


