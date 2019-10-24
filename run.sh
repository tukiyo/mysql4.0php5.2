IMAGE="tukiyo/mysql4php52:centos7"
IMAGE="tukiyo/mysql4php52:debian10"
docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
