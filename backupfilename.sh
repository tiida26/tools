#!/bin/bash


# Path
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/root/bin
export PATH


# Variables
DATE=$(date +%Y%m%d)
DATENUM=${DATE}01
TMPDIR=/tmp
TMPFILE=numfile


# Check the timestamp.
TMP=$(find ${TMPDIR} -maxdepth 1 -type f -daystart -mtime 0 -name ${TMPFILE})
if [ ${TMP} ] ; then
    TMPNUM=$(cat ${TMP})
    DATENUM=$(($TMPNUM+1))
fi


# Run & Write the value
echo ${DATENUM} | tee ${TMPDIR}/numfile


# Processing at the end.
exit 0


