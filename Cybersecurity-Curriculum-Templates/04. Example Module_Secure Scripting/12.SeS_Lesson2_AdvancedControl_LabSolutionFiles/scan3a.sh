#! /bin/sh
#
MASTER=MasterList
TMP=/tmp/$$

> "$TMP"
#
for i in *
do
	echo `ls -sail "$i"` `shasum "$i"`
done
