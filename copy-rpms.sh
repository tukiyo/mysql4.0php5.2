#!/bin/sh

cd /

# rpmのコピー
(find / -type f -name "*\.rpm" | egrep -v "/host/|.src.rpm|checkinstall") \
&& mkdir -p /host/rpm \
&& cp $(find / -type f -name "*\.rpm" | egrep -v "/host/|.src.rpm|checkinstall") /host/rpm/

(find / -type f -name "*\.deb" | egrep -v "/host/") \
&& mkdir -p /host/deb \
&& cp $(find / -type f -name "*\.deb" | egrep -v "/host/") /host/deb/

chmod 777 /host/{rpm,deb}
