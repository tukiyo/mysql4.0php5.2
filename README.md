# tukiyo/mysql4.0php5.2

## Dockerfileについて

* ubuntu 20.04用
    * ubuntu2004

* centos7用
    * centos7-yyyymmdd

* centos8用
    * centos8-gd.so : gd.so をここで作成
    * centos8-mysql4php52 : 上のgd.soで差し替え
    * centos8-mysql5openssl102ruby18tenshi

### CentOS8用について

* centos7でビルド (CentOS8やUbuntu20.20用。共有ライブラリ libnsl.so.1 が張られている)
    * opt-mysql40
    * local-php-5.2.17
    * opt-openssl-1.0.2t
    * local-perl-IO-BufferedSelect-1.0
    * opt-ruby-1.8.7-p374
    * opt-tenshi-0.17

* centos8でビルド
    * perl-DBD-mysql50 : mysqlのベンチマークに必要。(centos8標準のではmysql4.0に接続が出来ない)
    * opt-mysql50-lib : perl-DBD-mysql50 を用いる。
    * tenshi
    * local-perl-IO-BufferedSelect : tenshiに必要

## メモ

|distro|mysql-server|php patch|ruby1.8.7| gcc |
|:--|:--:|:--|:--|:--|
|centos5| o | - | 1.8.5 | | 
|centos6| o | - | 1.8.7 | 4.4.7 | 
|centos7| o |要| 1.8.7 | compat-gcc-44 | 
|centos8| o |要| 1.8.7 | compat-gcc-44.el7 -std=gnu++98 | 

|distro|mysql-server|php patch|ruby1.8.7| gcc |
|:--|:--:|:--|:--|:--|
|debian9| o |要| - | 6.3.0-4 |
|debian10| o | - | - | -std=gnu++98 |
|fedora25| o |要| ? | 6.4.1 |

|distro|mysql-server|php patch|ruby1.8.7| gcc |
|:--|:--:|:--|:--|:--|
|ubuntu16.04| o |要| - | 5.3.1 (4.4 挑戦中) |
|ubuntu16.10| o |要| - | OS標準のGCC |
|ubuntu17.04| o |要| - | OS標準のGCC |
|ubuntu18.04| o |要| - | ubuntu 14.04 の gcc4.4 |
|ubuntu19.10| o |要| - | ubuntu 14.04 の gcc4.4 |
|ubuntu20.04| o |要| - | ubuntu 14.04 の gcc4.4 |

* CentOS 8 について
    * GCC8.2.1でビルドした ruby 1.8.7 が `10**80`が 0 になりエラー
    * GCC4.4.7でビルドした ruby 1.8.7 は `10**80`が正常に動いた。
    * mysql 4.0 はテストが通らなかった。(ATISなど)
    * mysql 4.1 はテストが通った。
    * mysql 5.0 はテスト未確認
    * DBD-mysql用
        * mysql 4.0 <= これはビルド通らなかった。
        * mysql 4.1
        * mysql 5.0 <= これを使うこととしよう
        * mysql 5.5
        * mariadb 5.5

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
