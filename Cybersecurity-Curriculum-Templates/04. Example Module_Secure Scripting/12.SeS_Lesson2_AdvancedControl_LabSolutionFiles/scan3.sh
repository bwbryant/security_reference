#! /bin/sh
#
#
MASTER=MasterList
TMP=/tmp/$$
>$TMP
for i in *
do
	if [ "$i" = "$TMP" ]
	then
		continue
	fi
	echo `ls -sail "$i"` `shasum "$i"` >> $TMP
done
diff "$MASTER" "$TMP"
rm $TMP
