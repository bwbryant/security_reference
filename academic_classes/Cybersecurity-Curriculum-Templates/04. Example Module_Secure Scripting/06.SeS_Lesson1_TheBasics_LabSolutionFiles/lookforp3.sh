#! /bin/sh
if [ $# -ne 2 ]
then
	echo "Usage: $0 string file" 1>&2
elif [ ! -r "$2" ]
then
	echo "$0: file $2 is not readable" 1>&2
else
	awk "/$1/    {  print \$0 }" "$2"
fi
