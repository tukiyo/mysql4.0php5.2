# tukiyo/mysql4.0php5.2

|distro|mysql-server|php patch|ruby1.8.7| gcc |
|:--|:--:|:--|:--|:--|
|centos5| o | - | 1.8.5 | | 
|centos6| o | - | 1.8.7 | 4.4.7 | 
|centos7| o |要| 1.8.7 | compat-gcc-44 | 
|centos8| o |要| 1.8.7 | compat-gcc-44.el7 | 
|debian9| o |要| - | 6.3.0-4 |
|debian10| x | - | - | - |
|fedora25| x |要| - | 6.4.1 |
|ubuntu16.04| o |要| - | 5.3.1 (4.4 挑戦中) |
|ubuntu16.10| o |要| - | |
|ubuntu17.04| o |要| - | |
|ubuntu18.04| o |要| - | |

* CentOS 8
    * GCC8.2.1でビルドした ruby 1.8.7 が `10**80`が 0 になりエラー
    * GCC4.4.7でビルドした ruby 1.8.7 は `10**80`が正常に動いた。

## 参考

* [CentOS7にphp5.2をインストール - blog.youyo.info](http://blog.youyo.info/post/2016/02/10/php52-centos7/)
    * http://museum.php.net/php5/php-5.2.17.tar.bz2
* [PHPのDB接続ライブラリを図でまとめてみた | なぞブロ](http://nazonohito51.jugem.jp/?eid=49)
    * [PHP: MySQL (PDO) - Manual](http://php.net/manual/ja/ref.pdo-mysql.php)

## buildメモ

* centos7でmysqldをビルドするにはcompat-gccが必要だった。
* 64bit 環境では --with-libdir=lib64 が 必要だった。

* [php 5.2.17をCentOS7,Ubuntu16.04でビルド - Qiita](http://qiita.com/tukiyo3/items/23dac84a2dcb60c3bc1a)
* [Ubuntu16.04でmysql4.0.30ビルド - Qiita](http://qiita.com/tukiyo3/items/bb82590f28ba4672f0dd)

* php5.2では以下はデフォルト有効

```
 --enable-trans-sid \
 --enable-memory-limit \
```

## pear::DB

> PHP Fatal error:  Cannot make static method DB::connect() non static in class DBcommon in 〜.php

`DB::connect()`を書き換えずに使い続けるなら1.7系最後の`1.7.14`を使う。

* https://pear.php.net/package/DB/download/All

```
pear install DB-1.7.14
```
