#!/bin/sh
set -eu
TMPFILE=/tmp/a1.html

nkf -w --overwrite ${1}
php /usr/local/php/bin/php_beautifier -t --input ${1} --output $TMPFILE \
 || (echo "[error] beautifier failure."; exit 1)
mv $TMPFILE ${1}
nkf -s --overwrite ${1}

echo "[ok] beautifier success."
rm -f $TMPFILE
