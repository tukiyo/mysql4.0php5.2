IMAGE="tukiyo/mysql4php52:centos7"
IMAGE="tukiyo/mysql4php52:fc25"
docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
