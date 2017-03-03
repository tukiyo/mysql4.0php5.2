%define name mysql-ruby
%define version 2.8.2
%define unmangled_version 2.8.2
%define release 1
%define _binaries_in_noarch_packages_terminate_build 0

Summary: mysql-ruby
Name: %{name}
Version: %{version}
Release: %{release}
License: Ruby's
Source0: %{name}-%{unmangled_version}.tar.gz
Group: Applications/File
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-buildroot
Prefix: %{_prefix}
BuildArch: x86_64

%define INSTALLDIR %{buildroot}/usr/lib64/ruby/site_ruby/1.8/x86_64-linux/

%description
/usr/lib64/ruby/site_ruby/1.8/x86_64-linux/mysql.so

%prep

%build

%install
rm -rf %{INSTALLDIR}
mkdir -p %{INSTALLDIR}
cp /usr/lib64/ruby/site_ruby/1.8/x86_64-linux/mysql.so %{INSTALLDIR}

%clean
rm -rf %{buildroot}

%files
/usr/lib64/ruby/site_ruby/1.8/x86_64-linux/mysql.so
%defattr(-,root,root)
