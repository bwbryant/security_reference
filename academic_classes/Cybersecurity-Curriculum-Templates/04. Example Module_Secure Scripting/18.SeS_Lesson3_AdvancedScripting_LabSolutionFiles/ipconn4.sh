#! /bin/sh
IFS=,
COUNT=0
while read CONN DATE TIME DURATION PROTO SRCPORT DESTPORT SRCIP DESTIP ATTACK TYPE
do
	if [ $COUNT -ne 0 ]
	then
		DESTNAME=`echo $DESTIP | sed -f hostmap.sed`
	else
		DESTNAME="DESTINATION NAME"
	fi
	echo "$CONN,$DATE,$TIME,$DURATION,$PROTO,$SRCPORT,$DESTPORT,$SRCIP,$DESTIP,$DESTNAME,$ATTACK,$TYPE"
	COUNT=`expr $COUNT + 1`
done < connect.csv
exit 0
