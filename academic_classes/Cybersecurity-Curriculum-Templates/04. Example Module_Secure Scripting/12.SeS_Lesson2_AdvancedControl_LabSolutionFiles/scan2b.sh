#! /bin/sh
#
MASTER=MasterList
#
if [ -e "$MASTER" ]
then
	echo "$MASTER exists; please delete it" 1>&2
	exit 1
else
	> "$MASTER"
fi
#
for i in *
do
	echo `ls -sail "$i"` `shasum "$i"`
done
