set -eu
grep "^SELINUX=disabled" /etc/selinux/config \
|| exit 1

# rpm -qip *.rpm でHost名が記録されているのを上書き
hostname cent511.i386

export BUILDROOT="/usr/src/redhat"
export CHECKINSTALL=/usr/local/sbin/checkinstall

yum install -y -q gcc gcc-c++ glibc ncurses-devel make rpm-build wget tar git which
mkdir -p $BUILDROOT/SPECS $BUILDROOT/SOURCES $BUILDROOT/BUILD
cd $BUILDROOT/SOURCES

cp -a ~/mysql4.0php5.2/files/* .
yum install -y epel-release
yum install -y git gettext
yum install -y -q 

git clone http://checkinstall.izto.org/checkinstall.git
cd checkinstall
./configure
make
make install
$CHECKINSTALL -y -R --pkgname=checkinstall

cd $BUILDROOT/SOURCES

tar xzf mysql-4.0.30.tar.gz
cd "$BUILDROOT/SOURCES/mysql-4.0.30"
 && ./configure --prefix=/opt/mysql --with-charset=ujis --with-extra-charsets=sjis --quiet \
 && make -s \
 && make install
$CHECKINSTALL -y -R --pkgname=opt-mysql4

export PACKAGES="libmcrypt-devel flex httpd-devel libxml2-devel openssl-devel libjpeg-devel libpng-devel freetype-devel mhash-devel bison"
yum install -y -q $PACKAGES
cd $BUILDROOT/SOURCES/

tar xzf re2c-0.16.tar.gz
cd re2c-0.16 \
 && ./configure \
 && make -s \
 && make install
$CHECKINSTALL -y -R --pkgname=local-re2c

cd $BUILDROOT/SOURCES
gcc -o /usr/local/bin/lemon lemon.c
 
 
tar jxf php-5.2.17.tar.bz2
cd $BUILDROOT/SOURCES/php-5.2.17
 
yum install -y libtool-ltdl-devel
export PATH=$PATH:/usr/local/bin

./configure --quiet \
  --prefix=/usr/local/php \
  --with-apxs2=/usr/sbin/apxs \
  --with-pear=/usr/local/pear \
  --disable-cgi \
  --enable-zend-multibyte \
  --enable-mbstring \
  \
  --with-mysql=shared,/opt/mysql \
  --with-pdo-mysql=shared,/opt/mysql \
  \
  --with-mhash=shared,/usr \
  --with-mcrypt=shared,/usr \
  --enable-sockets \
  --enable-pcntl \
  --enable-sigchild \
  --with-gd=shared \
  --with-jpeg-dir=/usr \
  --with-png-dir=/usr \
  --with-zlib-dir=/usr \
  --with-ttf \
  --with-freetype-dir=/usr \
  --enable-gd-native-ttf \
  --enable-gd-jis-conv \
  \
  --with-config-file-path=/etc/ --with-config-file-scan-dir=/etc/php.d

make -s
yum install -y -q autoconf

#make test
# /etc/httpd/conf/httpd.confがhttpdパッケージとconfrictするため除外
make install
$CHECKINSTALL -y -R --pkgname=local-php --exclude=/etc/httpd/conf/

/usr/local/php/bin/pear install DB-1.8.2 \
 && /usr/local/php/bin/pear install Var_Dump

cd /usr/local
tar czf $BUILDROOT/SOURCES/local-pear.tar.gz pear php/bin/pear php/bin/peardev php/bin/gen_php_doc.sh \
 && tar xzf $BUILDROOT/SOURCES/local-pear.tar.gz -C $BUILDROOT/BUILD/

cd $BUILDROOT/
cp $BUILDROOT/SOURCES/local-pear.spec $BUILDROOT/SPECS/ \
 && rpmbuild -ba SPECS/local-pear.spec

#---------
# resuilt
#---------
echo $BUILDROOT
sh -c "find . | grep \.rpm$ | xargs ls -lh"