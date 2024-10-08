%define name ruby-dbi
%define version 0.1.1
%define unmangled_version 0.1.1
%define release 1
%define _binaries_in_noarch_packages_terminate_build 0

Summary: ruby-dbi
Name: %{name}
Version: %{version}
Release: %{release}
License: GPL
Source0: %{name}-%{unmangled_version}.tar.gz
Group: Applications/File
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-buildroot
Prefix: %{_prefix}
BuildArch: i386

%define INSTALLDIR %{buildroot}

%description
https://github.com/erikh/ruby-dbi/

%prep

%build

%install
rm -rf %{INSTALLDIR}
mkdir -p %{INSTALLDIR}
cp --parents -a /usr/lib/ruby/site_ruby/1.8 %{INSTALLDIR}
cp --parents /usr/bin/sqlsh.rb %{INSTALLDIR}

%clean
rm -rf %{buildroot}

%files
/usr/bin/sqlsh.rb
/usr/lib/ruby/site_ruby/1.8
%defattr(-,root,root)
