IMAGE="tukiyo/mysql4php52:debian10"
IMAGE="tukiyo/mysql4php52:centos7"
IMAGE="tukiyo/mysql4php52:centos7-2019-1126"
IMAGE="tukiyo/mysql4php52:centos8"
IMAGE="centos:7"
IMAGE="tukiyo/mysql4php52:centos8-mariadb55"
IMAGE="centos:8"
docker run --rm \
 -p 3306:3306 \
 -v `pwd`:/host/  -it $IMAGE \
 /bin/bash
