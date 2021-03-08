#!/bin/sh

IMAGE="tukiyo3/mysql4.0php5.2:centos8-mysql5openssl102ruby18tenshi"
#IMAGE="tukiyo3/mysql4.0php5.2:centos8-mysql4php52"
IMAGE="tukiyo3/mysql4.0php5.2:centos8-gd.so"
#IMAGE="tukiyo3/mysql4.0php5.2:centos7"
#IMAGE="tukiyo3/mysql4.0php5.2:centos7-mysql40"
#IMAGE="tukiyo3/mysql4.0php5.2:ubuntu2004"
#IMAGE="tukiyo3/mysql4.0php5.2:debian10"
IMAGE="tukiyo3/mysql4.0php5.2:ubuntu2004"
IMAGE="tukiyo3/mysql4.0php5.2:centos6"

docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
