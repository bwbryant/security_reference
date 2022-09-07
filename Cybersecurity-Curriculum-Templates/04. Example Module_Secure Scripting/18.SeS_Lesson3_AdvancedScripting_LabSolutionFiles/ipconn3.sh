#! /bin/sh
IFS=,
COUNT=0
while read CONN DATE TIME TIMESTAMP DURATION PROTO SRCPORT DESTPORT SRCIP DESTIP ATTACK TYPE
do
	if [ $COUNT -eq 1 ]
	then
		BEGINTIMESTAMP="$TIMESTAMP"
	else
		ENDTIMESTAMP="$TIMESTAMP"
	fi
	COUNT=`expr $COUNT + 1`
done < connect-ts.csv
DUR=`expr $ENDTIMESTAMP - $BEGINTIMESTAMP`
echo "Begin: $BEGINTIMESTAMP; End: $ENDTIMESTAMP; Duration: $DUR seconds (`expr $DUR / 3600`:`expr $DUR / 60 % 60`:`expr $DUR % 60`)"
exit 0
