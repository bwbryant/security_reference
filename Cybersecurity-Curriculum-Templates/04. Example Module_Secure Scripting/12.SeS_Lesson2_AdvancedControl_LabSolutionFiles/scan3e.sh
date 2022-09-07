#! /bin/sh
#
MASTER=MasterList
TMP=/tmp/$$

> "$TMP"

if [ ! -f "$MASTER" ]
then
	echo "Master file does not exist; please generate it" 1>&2
	exit 1
fi

#
for i in *
do
	if [ "$TMP"x = "$i"x ]
	then
		continue
	fi
	echo `ls -sail "$i"` `shasum "$i"` >> "$TMP"
done
echo "Changed files:"
diff "$MASTER" "$TMP"
