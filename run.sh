IMAGE="tukiyo/mysql4php52:debian10"
IMAGE="tukiyo/mysql4php52:centos8"
IMAGE="tukiyo/mysql4php52:centos7"
IMAGE="tukiyo/mysql4php52:centos8-ruby"
IMAGE="tukiyo/mysql4php52:centos8-gcc447"
docker run --rm -v `pwd`:/host/  -it $IMAGE /bin/bash
