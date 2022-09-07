#! /bin/sh
if [ $# -ne 3 ]
then
	echo "Usage: $0 num1 num2 [ -m | -d ]" 1>&2
	exit 1
fi
if [ x"$3" = x-m ]
then
	expr $1 '*' $2
elif [ x"$3" = x-d ]
then
	expr $1 / $2
else
	echo "$0: third argument must be -m or -d" 1>&2 
	exit 1
fi
exit 0
