#!/bin/sh
set -eu

_build() {
	TAG=$1
	if [ $# -eq 2 ];then
		TAG=$2
	fi
	echo "info: $TAG"
	docker build . --no-cache=false -f Dockerfile/${1} -t tukiyo3/mysql4php52:${TAG}
}

#export BUILD="docker build . --no-cache=false -f "
#$BUILD dockerfiles/ubuntu2004-build -t tukiyo3/ubuntu-build:20.04

_build centos6-build
_build centos6
#_build centos5
#_build centos7-mysql40
#_build ubuntu2004-build
#_build ubuntu2004
#_build ubuntu2004-sqlbench
#_build ubuntu2004-openssl098
#_build debian10
#_build centos7
#_build centos8-gd.so
#_build centos8-mysql4php52
#_build centos8-mysql5openssl102ruby18tenshi
