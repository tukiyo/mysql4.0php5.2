export BUILD="docker build . --no-cache=false -f "

#$BUILD Dockerfile.centos5 -t tukiyo/mysql4php52:centos5
#$BUILD Dockerfile.centos6 -t tukiyo/mysql4php52:centos6
$BUILD Dockerfile.centos7 -t tukiyo/mysql4php52:centos7
#$BUILD Dockerfile.centos7 -t tukiyo/mysql4php52:centos7mysqld
#$BUILD Dockerfile.fc25 -t tukiyo/mysql4php52:fc25
#$BUILD Dockerfile.ubuntu1604 -t tukiyo/mysql4php52:ubuntu1604
#$BUILD Dockerfile.ubuntu1610 -t tukiyo/mysql4php52:ubuntu1610
#$BUILD Dockerfile.ubuntu1704 -t tukiyo/mysql4php52:ubuntu1704
#$BUILD Dockerfile.debian9 -t tukiyo/mysql4php52:debian9
