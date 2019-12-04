IMAGE="centos:6"
IMAGE="centos:8"
IMAGE="tukiyo/mysql4php52:debian10"
IMAGE="tukiyo/mysql4php52:centos7-2019-1126"
IMAGE="tukiyo/mysql4php52:centos8-mariadb55"
IMAGE="tukiyo/mysql4php52:centos8-mysql41"
IMAGE="tukiyo/mysql4php52:centos8-mysql55"
IMAGE="tukiyo/mysql4php52:centos8"
IMAGE="tukiyo3/centos7-build"
IMAGE="tukiyo3/ubuntu-build:14.04"
IMAGE="ubuntu:14.04"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
