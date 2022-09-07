#! /bin/sh
if [ $# -ne 1 ]
then
	echo "Usage: give exactly 1 argument, the string to be looked for" 1>&2
else
	grep "$1" dict.txt
fi
