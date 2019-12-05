export BUILD="docker build . --no-cache=false -f "

# $BUILD dockerfile/Dockerfile.centos5 -t tukiyo/mysql4php52:centos5
# $BUILD dockerfile/Dockerfile.centos6 -t tukiyo/mysql4php52:centos6
# $BUILD dockerfile/Dockerfile.centos7-mysql40 -t tukiyo/mysql4php52:centos7-mysql40
# $BUILD dockerfile/Dockerfile.centos7-20191204 -t tukiyo/mysql4php52:centos7-20191204
# $BUILD dockerfile/Dockerfile.centos8 -t tukiyo/mysql4php52:centos8
# $BUILD dockerfile/Dockerfile -t tukiyo/mysql4php52

# $BUILD dockerfile/Dockerfile.fc25 -t tukiyo/mysql4php52:fc25

$BUILD dockerfile/Dockerfile.ubuntu2004 -t tukiyo/mysql4php52:ubuntu2004
# $BUILD dockerfile/Dockerfile.ubuntu2004-sqlbench -t tukiyo/mysql4php52:ubuntu2004-sqlbench

# $BUILD dockerfile/Dockerfile.debian10 -t tukiyo/mysql4php52:debian10
