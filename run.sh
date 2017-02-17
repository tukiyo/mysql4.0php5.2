IMAGE="tukiyo/mysql4php52:centos5"
IMAGE="centos:5"
IMAGE="bf2e2286670b"
docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
