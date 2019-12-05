#!/bin/sh

IMAGE="centos:6"
IMAGE="centos:8"
IMAGE="tukiyo/mysql4php52:centos7-2019-1126"
IMAGE="tukiyo/mysql4php52:centos8"
IMAGE="tukiyo/mysql4php52:debian10"
IMAGE="tukiyo/mysql4php52:latest"
IMAGE="tukiyo3/centos7-build"
IMAGE="ubuntu:20.04"
IMAGE="tukiyo/mysql4php52:ubuntu2004"
IMAGE="tukiyo/mysql4php52:ubuntu2004-sqlbench"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
