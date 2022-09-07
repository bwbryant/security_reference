#! /bin/sh
FILE=bool1.sh
if [ "${FILE}" != gleep -a -f "${FILE}" ]
then
	echo "Not gleep, and a regular file"
fi
exit 0
