#!/usr/bin/env bash

# $1: image name

docker ps -f "name=$1" --format '{{.Names}}'