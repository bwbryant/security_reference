#! /bin/sh
if test $# -ne 1
then
	echo "Usage: $0 file" 1>&2
	exit 1
fi
echo "$0":
cat "$0"
exit 0
