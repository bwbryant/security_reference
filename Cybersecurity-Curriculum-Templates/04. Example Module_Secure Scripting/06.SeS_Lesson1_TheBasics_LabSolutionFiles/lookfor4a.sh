#! /bin/sh
if [ $# -ne 2 ]
then
	echo Usage: lookfor4 string file 1>&2
else
	grep "$1" "$2"
fi
