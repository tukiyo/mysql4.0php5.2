export BUILD="docker build . --no-cache=false -f "

# $BUILD Dockerfile.centos5 -t tukiyo/mysql4php52:centos5
# $BUILD Dockerfile.centos6 -t tukiyo/mysql4php52:centos6
# $BUILD Dockerfile.centos7-mysql40 -t tukiyo/mysql4php52:centos7-mysql40
# $BUILD Dockerfile.centos7-20191204 -t tukiyo/mysql4php52:centos7-20191204
# $BUILD Dockerfile.centos8 -t tukiyo/mysql4php52:centos8
# $BUILD Dockerfile -t tukiyo/mysql4php52

# $BUILD Dockerfile.fc25 -t tukiyo/mysql4php52:fc25

$BUILD Dockerfile.ubuntu2004 -t tukiyo/mysql4php52:ubuntu2004
# $BUILD Dockerfile.ubuntu2004-sqlbench -t tukiyo/mysql4php52:ubuntu2004-sqlbench

# $BUILD Dockerfile.debian10 -t tukiyo/mysql4php52:debian10
