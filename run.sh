#!/bin/sh

IMAGE="tukiyo/mysql4php52:centos8-mysql5openssl102ruby18tenshi"
#IMAGE="tukiyo/mysql4php52:centos8-mysql4php52"
IMAGE="tukiyo/mysql4php52:centos8-gd.so"
#IMAGE="tukiyo/mysql4php52:centos7-20200427"
#IMAGE="tukiyo/mysql4php52:centos7-mysql40"
#IMAGE="tukiyo/mysql4php52:ubuntu2004"
#IMAGE="tukiyo/mysql4php52:debian10"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
