mkdir -p /host/{rpm,deb}

cd /
cp $(find / -type f -name "*\.rpm" | egrep -v "/host/|.src.rpm|checkinstall") /host/rpm/
cp $(find / -type f -name "*\.deb" | egrep -v "/host/|.src.rpm|checkinstall") /host/deb/

chmod 777 /host/{rpm,deb}

# list
find / -type f -name "*\.rpm" | egrep -v "/host/|.src.rpm|checkinstall"
find / -type f -name "*\.deb" | egrep -v "/host/|.src.rpm|checkinstall"
