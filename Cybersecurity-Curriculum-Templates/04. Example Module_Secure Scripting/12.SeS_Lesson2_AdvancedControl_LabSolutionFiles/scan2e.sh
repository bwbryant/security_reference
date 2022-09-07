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
	if [ ! -f "$i" -o "$i"x = "$MASTER"x ]
	then
		continue
	fi
	echo `ls -sail "$i"` `shasum "$i"` >> "$MASTER"
done
exit 0
