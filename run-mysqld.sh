#!/bin/sh

IMAGE="ubuntu:20.04"
IMAGE="tukiyo/mysql4php52:latest"
IMAGE="tukiyo/mysql4php52:ubuntu2004"

docker run --rm \
 -p 3306:3306 \
 -v `pwd`:/host/  -it $IMAGE \
 /bin/bash
