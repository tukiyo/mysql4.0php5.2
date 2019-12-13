#!/bin/sh

IMAGE="centos:6"
IMAGE="tukiyo/mysql4php52:centos8"
IMAGE="tukiyo/mysql4php52:debian10"
IMAGE="tukiyo/mysql4php52:latest"
IMAGE="ubuntu:20.04"
IMAGE="tukiyo/mysql4php52:ubuntu2004"
IMAGE="tukiyo/mysql4php52:ubuntu2004-sqlbench"
IMAGE="centos:8"
IMAGE="tukiyo3/centos8-build"
IMAGE="tukiyo3/centos7-build"

#IMAGE="tukiyo/mysql4php52:centos7-20191213"
IMAGE="tukiyo/mysql4php52:centos8-mysql4php52"
#IMAGE="tukiyo/mysql4php52:centos8-mysql5openssl102ruby18tenshi"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
