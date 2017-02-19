* centos5
    * re2c
    * lemon
* centos6
    * re2c
    * lemon
    * flex
* centos7
    * re2c
    * lemon
    * flex
    * bison


## re2c

> configure: warning: You will need re2c 0.13.4 or later if you want to regenerate PHP parsers.

* https://sourceforge.net/projects/re2c/
* http://www.kurobuti.com/blog/?p=6994

## lemon

> configure: warning: lemon versions supported for regeneration of libsqlite parsers: 1.0 (found: none).

* http://www.sqlite.org/src/raw/tool/lemon.c?name=09a96bed19955697a5e20c49ad863ec2005815a2
* http://oki2a24.com/2016/05/31/install-lemon-parser-to-centos-5-64/

## flex 2.5.4a (centos6,7)

> configure: warning: flex versions supported for regeneration of the Zend/PHP parsers: 2.5.4  (found: none)

* https://mirrors.netix.net/sourceforge/l/lt/ltsp/Sources/Misc%20sources/flex-2.5.4a.tar.gz

## bison (centos7)

> configure: warning: bison versions supported for regeneration of the Zend/PHP parsers: 1.28 1.35 1.75 1.875 2.0 2.1 2.2 2.3 2.4 2.4.1 (found: 2.7).

* http://ftp.gnu.org/gnu/bison/bison-2.4.1.tar.bz2

## xdebug

* http://xdebug.org/files/xdebug-2.2.7.tgz

## mysql

* https://dbstudy.info/mysql/4.0.27/mysql-4.0.27.tar.gz
* https://dbstudy.info/mysql/4.0.30/mysql-4.0.30.tar.gz

```
//mysql4.1
./configure --with-charset=ujis

//mysql5.0
./configure --with-charset=eucjpms
```

* http://tsuttayo.jpn.org/mysql/install/linux/rpm.php

```
[mysqld-5.0]
old-passwords
```

* http://q.hatena.ne.jp/1193715273
