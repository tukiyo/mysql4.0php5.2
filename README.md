# tukiyo/mysql4.0php5.2

## 参考

* [CentOS7にphp5.2をインストール - blog.youyo.info](http://blog.youyo.info/post/2016/02/10/php52-centos7/)
    * http://museum.php.net/php5/php-5.2.17.tar.bz2
* [PHPのDB接続ライブラリを図でまとめてみた | なぞブロ](http://nazonohito51.jugem.jp/?eid=49)
    * [PHP: MySQL (PDO) - Manual](http://php.net/manual/ja/ref.pdo-mysql.php)

## buildメモ

* 64bit 環境では --with-libdir=lib64 が 必要だった。

* [php 5.2.17をCentOS7,Ubuntu16.04でビルド - Qiita](http://qiita.com/tukiyo3/items/23dac84a2dcb60c3bc1a)
* [Ubuntu16.04でmysql4.0.30ビルド - Qiita](http://qiita.com/tukiyo3/items/bb82590f28ba4672f0dd)

* php5.2では以下はデフォルト有効

```
 --enable-trans-sid \
 --enable-memory-limit \
```

* todo
    * mysql : orbit-config not found.

* php: make test

### centos5

```ruby
TEST RESULT SUMMARY
---------------------------------------------------------------------
Exts skipped    :   48
Exts tested     :   31
---------------------------------------------------------------------

Number of tests : 9031              6865
Tests skipped   : 2166 ( 24.0%) --------
Tests warned    :    0 (  0.0%) (  0.0%)
Tests failed    :   24 (  0.3%) (  0.3%)
Expected fail   :    4 (  0.0%) (  0.1%)
Tests passed    : 6837 ( 75.7%) ( 99.6%)
---------------------------------------------------------------------
Time taken      :  301 seconds
```

```ruby
FAILED TEST SUMMARY
---------------------------------------------------------------------
Zend Multibyte and UTF-16 BOM [Zend/tests/multibyte/multibyte_encoding_003.phpt]
timezone_abbreviations_list() tests [ext/date/tests/010.phpt]
Test DateTimeZone::listAbbreviations() function : basic functionality [ext/date/tests/DateTimeZone_listAbbreviations_basic1.phpt]
Test DateTime::modify() function : usage variation - Passing unexpected values to first argument $modify. [ext/date/tests/DateTime_modify_variation1.phpt]
Test date_modify() function : usage variation - Passing unexpected values to second argument $format. [ext/date/tests/date_modify_variation2.phpt]
Test timezone_abbreviations_list() function : basic functionality [ext/date/tests/timezone_abbreviations_list_basic1.phpt]
DOMDocument::$validateOnParse - effectual determination (dom_document_validate_on_parse_read/dom_document_validate_on_parse_write) [ext/dom/tests/DOMDocument_validate_on_parse_variation.phpt]
Test 7: DTD tests [ext/dom/tests/dom007.phpt]
Bug #43073 (TrueType bounding box is wrong for angle<>0) [ext/gd/tests/bug43073.phpt]
Bug #48801 (Problem with imagettfbbox) [ext/gd/tests/bug48801.phpt]
Test imagecolorallocate() function : usage variations  - passing different data types to fourth argument [ext/gd/tests/imagecolorallocate_variation4.phpt]
mhash() test [ext/mhash/tests/001.phpt]
mhash_keygen_s2k() test [ext/mhash/tests/003.phpt]
Bug #41125 (PDO mysql + quote() + prepare() can result in seg fault) [ext/pdo_mysql/tests/bug41125.phpt]
Bug #44327 (PDORow::queryString property & numeric offsets / Crash) [ext/pdo_mysql/tests/bug44327.phpt]
Test posix_getgrgid() function : basic functionality [ext/posix/tests/posix_getgrgid_basic.phpt]
Test session_encode() function : error functionality [ext/session/tests/session_encode_error2.phpt]
SimpleXML: XPath [ext/simplexml/tests/008.phpt]
file_get_contents() test using offset parameter out of range [ext/standard/tests/file/file_get_contents_error001.phpt]
Test lstat() and stat() functions: usage variations - effects of touch() on link [ext/standard/tests/file/lstat_stat_variation6.phpt]
Bug #39322 (proc_terminate() loosing process resource) [ext/standard/tests/general_functions/bug39322.phpt]
proc_open [ext/standard/tests/general_functions/proc_open02.phpt]
Test uniqid() function : basic functionality [ext/standard/tests/general_functions/uniqid_basic.phpt]
time_sleep_until() function - basic test for time_sleep_until() [ext/standard/tests/misc/time_sleep_until_basic.phpt]
```

### centos6

```ruby
TEST RESULT SUMMARY
---------------------------------------------------------------------
Exts skipped    :   48
Exts tested     :   31
---------------------------------------------------------------------

Number of tests : 9031              6849
Tests skipped   : 2182 ( 24.2%) --------
Tests warned    :    0 (  0.0%) (  0.0%)
Tests failed    :   24 (  0.3%) (  0.4%)
Expected fail   :    4 (  0.0%) (  0.1%)
Tests passed    : 6821 ( 75.5%) ( 99.6%)
---------------------------------------------------------------------
Time taken      :  211 seconds
```

```ruby
FAILED TEST SUMMARY
---------------------------------------------------------------------
Zend Multibyte and UTF-16 BOM [Zend/tests/multibyte/multibyte_encoding_003.phpt]
timezone_abbreviations_list() tests [ext/date/tests/010.phpt]
Test DateTimeZone::listAbbreviations() function : basic functionality [ext/date/tests/DateTimeZone_listAbbreviations_basic1.phpt]
Test DateTime::modify() function : usage variation - Passing unexpected values to first argument $modify. [ext/date/tests/DateTime_modify_variation1.phpt]
Test date_modify() function : usage variation - Passing unexpected values to second argument $format. [ext/date/tests/date_modify_variation2.phpt]
Test timezone_abbreviations_list() function : basic functionality [ext/date/tests/timezone_abbreviations_list_basic1.phpt]
DOMDocument::validate() should validate an external DTD declaration [ext/dom/tests/DOMDocument_validate_external_dtd.phpt]
DOMDocument::$validateOnParse - effectual determination (dom_document_validate_on_parse_read/dom_document_validate_on_parse_write) [ext/dom/tests/DOMDocument_validate_on_parse_variation.phpt]
Test 7: DTD tests [ext/dom/tests/dom007.phpt]
Bug #43073 (TrueType bounding box is wrong for angle<>0) [ext/gd/tests/bug43073.phpt]
Test imagecolorallocate() function : usage variations  - passing different data types to fourth argument [ext/gd/tests/imagecolorallocate_variation4.phpt]
mhash() test [ext/mhash/tests/001.phpt]
mhash_keygen_s2k() test [ext/mhash/tests/003.phpt]
Bug #41125 (PDO mysql + quote() + prepare() can result in seg fault) [ext/pdo_mysql/tests/bug41125.phpt]
Bug #44327 (PDORow::queryString property & numeric offsets / Crash) [ext/pdo_mysql/tests/bug44327.phpt]
Test session_encode() function : error functionality [ext/session/tests/session_encode_error2.phpt]
SimpleXML: XPath [ext/simplexml/tests/008.phpt]
ext/sockets - socket_strerror - basic test [ext/sockets/tests/socket_strerror.phpt]
Test lstat() and stat() functions: usage variations - effects of touch() on link [ext/standard/tests/file/lstat_stat_variation6.phpt]
Bug #39322 (proc_terminate() loosing process resource) [ext/standard/tests/general_functions/bug39322.phpt]
proc_open [ext/standard/tests/general_functions/proc_open02.phpt]
Test uniqid() function : basic functionality [ext/standard/tests/general_functions/uniqid_basic.phpt]
time_sleep_until() function - basic test for time_sleep_until() [ext/standard/tests/misc/time_sleep_until_basic.phpt]
Bug #32001 (xml_parse*() goes into infinite loop when autodetection in effect), using UTF-* [ext/xml/tests/bug32001.phpt]
```

### centos7

```ruby
TEST RESULT SUMMARY
---------------------------------------------------------------------
Exts skipped    :   48
Exts tested     :   31
---------------------------------------------------------------------

Number of tests : 9031              6854
Tests skipped   : 2177 ( 24.1%) --------
Tests warned    :    0 (  0.0%) (  0.0%)
Tests failed    :   26 (  0.3%) (  0.4%)
Expected fail   :    4 (  0.0%) (  0.1%)
Tests passed    : 6824 ( 75.6%) ( 99.6%)
---------------------------------------------------------------------
Time taken      :  240 seconds
```

```ruby
FAILED TEST SUMMARY
---------------------------------------------------------------------
Bug #34712 (zend.ze1_compatibility_mode = on segfault) [Zend/tests/bug34712.phpt]
Zend Multibyte and UTF-16 BOM [Zend/tests/multibyte/multibyte_encoding_003.phpt]
timezone_abbreviations_list() tests [ext/date/tests/010.phpt]
Test DateTimeZone::listAbbreviations() function : basic functionality [ext/date/tests/DateTimeZone_listAbbreviations_basic1.phpt]
Test DateTime::modify() function : usage variation - Passing unexpected values to first argument $modify. [ext/date/tests/DateTime_modify_variation1.phpt]
Test date_modify() function : usage variation - Passing unexpected values to second argument $format. [ext/date/tests/date_modify_variation2.phpt]
Test timezone_abbreviations_list() function : basic functionality [ext/date/tests/timezone_abbreviations_list_basic1.phpt]
DOMDocument::validate() should validate an external DTD declaration [ext/dom/tests/DOMDocument_validate_external_dtd.phpt]
DOMDocument::$validateOnParse - effectual determination (dom_document_validate_on_parse_read/dom_document_validate_on_parse_write) [ext/dom/tests/DOMDocument_validate_on_parse_variation.phpt]
Test 7: DTD tests [ext/dom/tests/dom007.phpt]
Bug #43073 (TrueType bounding box is wrong for angle<>0) [ext/gd/tests/bug43073.phpt]
Bug #48801 (Problem with imagettfbbox) [ext/gd/tests/bug48801.phpt]
Test imagecolorallocate() function : usage variations  - passing different data types to fourth argument [ext/gd/tests/imagecolorallocate_variation4.phpt]
mhash() test [ext/mhash/tests/001.phpt]
mhash_keygen_s2k() test [ext/mhash/tests/003.phpt]
Bug #41125 (PDO mysql + quote() + prepare() can result in seg fault) [ext/pdo_mysql/tests/bug41125.phpt]
Bug #44327 (PDORow::queryString property & numeric offsets / Crash) [ext/pdo_mysql/tests/bug44327.phpt]
Test session_encode() function : error functionality [ext/session/tests/session_encode_error2.phpt]
SimpleXML: XPath [ext/simplexml/tests/008.phpt]
ext/sockets - socket_strerror - basic test [ext/sockets/tests/socket_strerror.phpt]
Test lstat() and stat() functions: usage variations - effects of touch() on link [ext/standard/tests/file/lstat_stat_variation6.phpt]
Bug #39322 (proc_terminate() loosing process resource) [ext/standard/tests/general_functions/bug39322.phpt]
proc_open [ext/standard/tests/general_functions/proc_open02.phpt]
Test uniqid() function : basic functionality [ext/standard/tests/general_functions/uniqid_basic.phpt]
time_sleep_until() function - basic test for time_sleep_until() [ext/standard/tests/misc/time_sleep_until_basic.phpt]
Test function gzgetc() by calling it with its expected arguments [ext/zlib/tests/gzgetc_basic.phpt]
```


### Fedora 25

```ruby
TEST RESULT SUMMARY
---------------------------------------------------------------------
Exts skipped    :   48
Exts tested     :   31
---------------------------------------------------------------------

Number of tests : 9031              6854
Tests skipped   : 2177 ( 24.1%) --------
Tests warned    :    0 (  0.0%) (  0.0%)
Tests failed    :   28 (  0.3%) (  0.4%)
Expected fail   :    4 (  0.0%) (  0.1%)
Tests passed    : 6822 ( 75.5%) ( 99.5%)
---------------------------------------------------------------------
Time taken      :  221 seconds
```

```ruby
FAILED TEST SUMMARY
---------------------------------------------------------------------
Bug #34712 (zend.ze1_compatibility_mode = on segfault) [Zend/tests/bug34712.phpt]
Zend Multibyte and UTF-16 BOM [Zend/tests/multibyte/multibyte_encoding_003.phpt]
timezone_abbreviations_list() tests [ext/date/tests/010.phpt]
Test DateTimeZone::listAbbreviations() function : basic functionality [ext/date/tests/DateTimeZone_listAbbreviations_basic1.phpt]
Test DateTime::modify() function : usage variation - Passing unexpected values to first argument $modify. [ext/date/tests/DateTime_modify_variation1.phpt]
Test date_modify() function : usage variation - Passing unexpected values to second argument $format. [ext/date/tests/date_modify_variation2.phpt]
Test basic date_parse() [ext/date/tests/date_parse_001.phpt]
Test timezone_abbreviations_list() function : basic functionality [ext/date/tests/timezone_abbreviations_list_basic1.phpt]
DOMDocument::validate() should validate an external DTD declaration [ext/dom/tests/DOMDocument_validate_external_dtd.phpt]
DOMDocument::$validateOnParse - effectual determination (dom_document_validate_on_parse_read/dom_document_validate_on_parse_write) [ext/dom/tests/DOMDocument_validate_on_parse_variation.phpt]
Test 7: DTD tests [ext/dom/tests/dom007.phpt]
Bug #43073 (TrueType bounding box is wrong for angle<>0) [ext/gd/tests/bug43073.phpt]
Bug #48801 (Problem with imagettfbbox) [ext/gd/tests/bug48801.phpt]
Test imagecolorallocate() function : usage variations  - passing different data types to fourth argument [ext/gd/tests/imagecolorallocate_variation4.phpt]
mhash() test [ext/mhash/tests/001.phpt]
mhash_keygen_s2k() test [ext/mhash/tests/003.phpt]
Bug #41125 (PDO mysql + quote() + prepare() can result in seg fault) [ext/pdo_mysql/tests/bug41125.phpt]
Bug #44327 (PDORow::queryString property & numeric offsets / Crash) [ext/pdo_mysql/tests/bug44327.phpt]
Test session_encode() function : error functionality [ext/session/tests/session_encode_error2.phpt]
SimpleXML: XPath [ext/simplexml/tests/008.phpt]
ext/sockets - socket_strerror - basic test [ext/sockets/tests/socket_strerror.phpt]
Test lstat() and stat() functions: usage variations - effects of touch() on link [ext/standard/tests/file/lstat_stat_variation6.phpt]
Bug #39322 (proc_terminate() loosing process resource) [ext/standard/tests/general_functions/bug39322.phpt]
proc_open [ext/standard/tests/general_functions/proc_open02.phpt]
Test uniqid() function : basic functionality [ext/standard/tests/general_functions/uniqid_basic.phpt]
time_sleep_until() function - basic test for time_sleep_until() [ext/standard/tests/misc/time_sleep_until_basic.phpt]
Test strptime() function : basic functionality [ext/standard/tests/time/strptime_basic.phpt]
Test function gzgetc() by calling it with its expected arguments [ext/zlib/tests/gzgetc_basic.phpt]
```
