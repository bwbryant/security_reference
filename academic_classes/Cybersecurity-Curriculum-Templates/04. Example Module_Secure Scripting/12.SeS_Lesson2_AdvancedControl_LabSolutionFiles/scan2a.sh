#! /bin/sh
#
MASTER=MasterList
#
for i in *
do
	echo `ls -sail "$i"` `shasum "$i"`
done
