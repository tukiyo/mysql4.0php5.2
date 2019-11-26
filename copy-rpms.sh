mkdir -p /host/tmp/

cd /
cp $(find / -type f -name "*\.rpm" | grep -v host | grep -v src.rpm) /host/tmp/

chmod 777 /host/tmp/
