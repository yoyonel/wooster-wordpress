#!/usr/bin/env bash

DOCKER_IMAGE=woosterwordpress_wordpress

DOCKER_CONTAINER=$(sh get_container_from_image_name.sh $DOCKER_IMAGE)
DOCKER_MOUNT_VOLUME=/var/www/html

sh backup_mount_volume_from_container.sh $DOCKER_CONTAINER $DOCKER_MOUNT_VOLUME