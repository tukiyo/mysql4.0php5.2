## re2c

> configure: warning: You will need re2c 0.13.4 or later if you want to regenerate PHP parsers.

* https://sourceforge.net/projects/re2c/
* http://www.kurobuti.com/blog/?p=6994

## lemon

> configure: warning: lemon versions supported for regeneration of libsqlite parsers: 1.0 (found: none).

* http://www.sqlite.org/src/raw/tool/lemon.c?name=09a96bed19955697a5e20c49ad863ec2005815a2
* http://oki2a24.com/2016/05/31/install-lemon-parser-to-centos-5-64/

## mysql

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
