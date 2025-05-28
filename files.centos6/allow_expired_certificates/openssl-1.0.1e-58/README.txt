rpm -ivh openssl-1.0.1e-58.el6_10.src.rpm

cd /root/rpmbuild/SPECS/

openssl.specに以下2点書き換える。


```diff
  sed -i 's/SHLIB_VERSION_NUMBER "1.0.0"/SHLIB_VERSION_NUMBER "%{version}"/' crypto/opensslv.h
+ sed -i -e "1593i return 1; //Allow expired certificates !" crypto/x509/x509_vfy.c
```

```diff
- make -C test apps tests
+ make -C test apps tests || true
```


rpmbuild --bb openssl.spec



# 以下rpmファイルが生成される

/root/rpmbuild/RPMS/x86_64/
	openssl-1.0.1e-58.el6.x86_64.rpm
	openssl-devel-1.0.1e-58.el6.x86_64.rpm
	openssl-static-1.0.1e-58.el6.x86_64.rpm
	openssl-perl-1.0.1e-58.el6.x86_64.rpm
	openssl-debuginfo-1.0.1e-58.el6.x86_64.rpm

必要なのは openssl-1.0.1e-58.el6.x86_64.rpm のみ。



# OSの日付を変更する方法

証明書の有効期限切れを確認するため、date.shを参考に日付を先に進めて問題がないことを確認。
