#!/bin/sh


# Path
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/root/bin
export PATH


# Variables 01
DATE=$(date +%Y%m%d)
TIMEFILE=/tmp/time_file
NUMFILE=/tmp/num_file


# Make a 'timefile'
touch -t ${DATE}0000 ${TIMEFILE}


# Determines whether to reset the file.
if [ ! -f ${NUMFILE} ] || [ ${NUMFILE} -ot ${TIMEFILE} ] ; then
    echo '0' >| ${NUMFILE}
fi


# Variables 02
NUMNOW=$(cat ${NUMFILE})
NUMNEXT=$(expr ${NUMNOW} + 1)
NUM=$(printf "%02d " ${NUMNEXT})
VALUE=${DATE}${NUM}


# Run
echo ${VALUE}


# Processing at the end.
echo "${NUMNEXT}" >| ${NUMFILE}

if [ -f ${TIMEFILE} ] ; then
    rm -f ${TIMEFILE}
fi

exit 0
