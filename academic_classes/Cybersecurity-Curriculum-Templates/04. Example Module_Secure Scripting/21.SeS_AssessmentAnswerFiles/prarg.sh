#! /bin/sh
if [ $# -eq 0 ]
then
	echo "No arguments given"
elif [ -z "$1" ]
then
	echo "The argument is empty"
else
	echo "$1"
fi
exit 0
	
