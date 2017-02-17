# tukiyo/mysql4.0php5.2

## 参考

* [CentOS7にphp5.2をインストール - blog.youyo.info](http://blog.youyo.info/post/2016/02/10/php52-centos7/)
* http://museum.php.net/php5/php-5.2.17.tar.bz2

## buildメモ

* 64bit 環境では --with-libdir=lib64 が 必要だった。

* [php 5.2.17をCentOS7,Ubuntu16.04でビルド - Qiita](http://qiita.com/tukiyo3/items/23dac84a2dcb60c3bc1a)
* [Ubuntu16.04でmysql4.0.30ビルド - Qiita](http://qiita.com/tukiyo3/items/bb82590f28ba4672f0dd)


## make test

* centos6

```
=====================================================================
TEST RESULT SUMMARY
---------------------------------------------------------------------
Exts skipped    :   48
Exts tested     :   31
---------------------------------------------------------------------

Number of tests : 9031              6849
Tests skipped   : 2182 ( 24.2%) --------
Tests warned    :    0 (  0.0%) (  0.0%)
Tests failed    :   25 (  0.3%) (  0.4%)
Expected fail   :    4 (  0.0%) (  0.1%)
Tests passed    : 6820 ( 75.5%) ( 99.6%)
---------------------------------------------------------------------
Time taken      :  202 seconds
=====================================================================
```
