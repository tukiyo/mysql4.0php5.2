export BUILD="docker build . --no-cache=false -f "

# $BUILD dockerfiles/Dockerfile.centos5 -t tukiyo/mysql4php52:centos5
# $BUILD dockerfiles/Dockerfile.centos6 -t tukiyo/mysql4php52:centos6
# $BUILD dockerfiles/Dockerfile.centos7-mysql40 -t tukiyo/mysql4php52:centos7-mysql40
# $BUILD dockerfiles/Dockerfile.centos7-20191204 -t tukiyo/mysql4php52:centos7-20191204
# $BUILD dockerfiles/Dockerfile.centos8 -t tukiyo/mysql4php52:centos8
# $BUILD dockerfiles/Dockerfile -t tukiyo/mysql4php52

$BUILD dockerfiles/Dockerfile.ubuntu2004-build -t tukiyo3/ubuntu-build:20.04
$BUILD dockerfiles/Dockerfile.ubuntu2004 -t tukiyo/mysql4php52:ubuntu2004
# $BUILD dockerfiles/Dockerfile.ubuntu2004-sqlbench -t tukiyo/mysql4php52:ubuntu2004-sqlbench

# $BUILD dockerfiles/Dockerfile.debian10 -t tukiyo/mysql4php52:debian10
