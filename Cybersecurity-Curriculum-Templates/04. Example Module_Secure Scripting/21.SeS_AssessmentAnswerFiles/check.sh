#! /bin/sh
if [ -r MasterList ]
then
	echo MasterList exists
	exit 0
else
	echo MasterList: no such file 1>&2
	exit 1
fi
