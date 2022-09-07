#! /bin/sh
#
MASTER=MasterList
TMP=/tmp/$$

> "$TMP"
#
for i in *
do
	if [ "$TMP"x = "$i"x ]
	then
		continue
	fi
	echo `ls -sail "$i"` `shasum "$i"` >> "$TMP"
done
