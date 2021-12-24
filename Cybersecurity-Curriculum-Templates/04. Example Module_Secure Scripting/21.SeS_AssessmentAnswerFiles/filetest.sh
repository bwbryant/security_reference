#! /bin/sh
for filename in "$@"
do
	if [ ! -e "$filename" ]
	then
		echo "$filename does not exist"
	fi
done
exit 0
