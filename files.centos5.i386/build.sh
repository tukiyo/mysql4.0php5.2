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
yum install -y git
yum install -y -q gettext

#git clone http://checkinstall.izto.org/checkinstall.git
#cd checkinstall
#./configure
#make
#make install
#$CHECKINSTALL -y -R --pkgname=checkinstall
rpm -ivh "~/mysql4.0php5.2/files.centos5.i386/checkinstall-20170227-1.i386.rpm"

cd $BUILDROOT/SOURCES

tar xzf mysql-4.0.30.tar.gz
cd "$BUILDROOT/SOURCES/mysql-4.0.30" \
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

/usr/local/php/bin/pear install DB-1.7.14 \
 && /usr/local/php/bin/pear install Var_Dump

cd /usr/local
tar czf $BUILDROOT/SOURCES/local-pear.tar.gz pear php/bin/pear php/bin/peardev php/bin/gen_php_doc.sh \
 && tar xzf $BUILDROOT/SOURCES/local-pear.tar.gz -C $BUILDROOT/BUILD/

cd $BUILDROOT/
cp $BUILDROOT/SOURCES/local-pear.spec $BUILDROOT/SPECS/ \
 && rpmbuild -ba SPECS/local-pear.spec

#---------
# ruby
#---------
cd $BUILDROOT/SOURCES/ruby/
yum install -y ruby ruby-devel

# mysql-ruby
tar xzf mysql-ruby-2.8.2.tar.gz \
 && cd mysql-ruby-2.8.2 \
 && ruby extconf.rb --with-mysql-dir=/opt/mysql \
 && make -s \
 && cp -a mysql.so /usr/lib/ruby/site_ruby/1.8/i386-linux/mysql.so

# rpmbuild
cd $BUILDROOT/
cp ~/mysql4.0php5.2/files.ruby/mysql-ruby.spec $BUILDROOT/SPECS/
tar czf $BUILDROOT/SOURCES/mysql-ruby-2.8.2.tar.gz /usr/lib/ruby/site_ruby/1.8/i386-linux/mysql.so \
 && rpmbuild -ba SPECS/mysql-ruby.spec # TODO

exit 1
 
# ruby-dbi 0.1.1
cd $BUILDROOT/SOURCES/ruby/
cp ~/mysql4.0php5.2/files.ruby/rel-0-1-1.tar.gz .
tar xzf rel-0-1-1.tar.gz \
 && cd ruby-dbi-rel-0-1-1 \
 && ruby setup.rb config --with=dbi,dbd_mysql \
 && ruby setup.rb setup \
 && ruby setup.rb install
# rpmbuild
cd $BUILDROOT/
cp ~/mysql4.0php5.2/files.ruby/ruby-dbi-0.1.1.spec $BUILDROOT/SPECS/
tar czf $BUILDROOT/SOURCES/ruby-dbi-0.1.1.tar.gz /usr/lib/ruby/site_ruby/1.8 /usr/bin/sqlsh.rb \
 && rpmbuild -ba SPECS/ruby-dbi-0.1.1.spec
