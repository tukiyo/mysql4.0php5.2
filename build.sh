export BUILD="docker build . --no-cache=false -f "

# $BUILD dockerfiles/Dockerfile.centos5 -t tukiyo/mysql4php52:centos5
# $BUILD dockerfiles/Dockerfile.centos6 -t tukiyo/mysql4php52:centos6
$BUILD dockerfiles/Dockerfile.centos7-mysql40 -t tukiyo/mysql4php52:centos7-mysql40
#$BUILD dockerfiles/Dockerfile.centos8-glibc -t tukiyo/mysql4php52:centos8-glibc
# $BUILD dockerfiles/Dockerfile -t tukiyo/mysql4php52

# $BUILD dockerfiles/Dockerfile.ubuntu2004-build -t tukiyo3/ubuntu-build:20.04
$BUILD dockerfiles/Dockerfile.ubuntu2004 -t tukiyo/mysql4php52:ubuntu2004
# $BUILD dockerfiles/Dockerfile.ubuntu2004-sqlbench -t tukiyo/mysql4php52:ubuntu2004-sqlbench

 $BUILD dockerfiles/Dockerfile.debian10 -t tukiyo/mysql4php52:debian10

$BUILD dockerfiles/Dockerfile.centos7-20200427 -t tukiyo/mysql4php52:centos7-20200427
$BUILD dockerfiles/Dockerfile.centos8-gd.so -t tukiyo/mysql4php52:centos8-gd.so
$BUILD dockerfiles/Dockerfile.centos8-mysql4php52 -t tukiyo/mysql4php52:centos8-mysql4php52
$BUILD dockerfiles/Dockerfile.centos8-mysql5openssl102ruby18tenshi -t tukiyo/mysql4php52:centos8-mysql5openssl102ruby18tenshi
