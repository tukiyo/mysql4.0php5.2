mkdir -p /host/tmp/

cd /
cp $(find / -type f -name "*\.rpm" | egrep -v "/host/|.src.rpm|checkinstall") /host/tmp/

chmod 777 /host/tmp/
