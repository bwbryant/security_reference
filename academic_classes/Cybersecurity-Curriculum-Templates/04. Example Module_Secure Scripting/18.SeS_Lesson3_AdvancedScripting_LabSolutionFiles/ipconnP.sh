#! /bin/sh
IFS=,
COUNT=0
while read CONN DATE TIME DURATION PROTO SRCPORT DESTPORT SRCIP DESTIP ATTACK TYPE
do
	if [ $COUNT -ne 0 ]
	then
		DESTNAME=`echo $DESTIP | sed -f hostmap.sed`
		DESTLIST="$DESTNAME $DESTLIST"
	else
		DESTNAME="DESTINATION NAME"
	fi
	echo "$CONN,$DATE,$TIME,$DURATION,$PROTO,$SRCPORT,$DESTPORT,$SRCIP,$DESTIP,$DESTNAME,$ATTACK,$TYPE"
	COUNT=`expr $COUNT + 1`
done < connect.csv
echo "The host names, and their frequency, are:"
echo $DESTLIST | sed 's/ $//' | tr ' ' '\012' | sort | uniq -c
exit 0
