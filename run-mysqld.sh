IMAGE="tukiyo/mysql4php52:debian10"
IMAGE="tukiyo/mysql4php52:centos8"
IMAGE="tukiyo/mysql4php52:centos7"
docker run --rm \
 -p 3306:3306 \
 -v `pwd`:/host/  -it $IMAGE \
 /bin/bash
