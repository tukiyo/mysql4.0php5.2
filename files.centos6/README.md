## openssl 1.0.1e

* http://vault.centos.org/6.10/updates/Source/SPackages/openssl-1.0.1e-58.el6_10.src.rpm


## httpd 2.2.15

* http://vault.centos.org/6.10/os/Source/SPackages/httpd-2.2.15-69.el6.centos.src.rpm


## Ruby 2.4.0

* https://github.com/feedforce/ruby-rpm/releases
* https://github.com/feedforce/ruby-rpm/releases/download/2.4.0/ruby-2.4.0-1.el6.x86_64.rpm


## curl

* https://ftp.jaist.ac.jp/pub/Linux/CentOS-vault/centos/6/updates/Source/SPackages/curl-7.19.7-54.el6_10.src.rpm

```
rpmbuild -ba /root/rpmbuild/SPECS/curl.spec
yum install -y libidn-devel libssh2-devel nss-devel openssh-server stunnel valgrind

## php
--with-curl=/root/rpmbuild/BUILD/curl-7.19.7
```
