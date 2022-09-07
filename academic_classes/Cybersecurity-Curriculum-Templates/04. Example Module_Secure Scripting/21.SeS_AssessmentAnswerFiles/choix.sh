#! /bin/sh
if [ $# -eq 1 ]
then
	echo hello
elif [ $# -eq 2 ]
then
	echo goodbye
else
	echo "oops ... bad argument"
fi
exit 0
