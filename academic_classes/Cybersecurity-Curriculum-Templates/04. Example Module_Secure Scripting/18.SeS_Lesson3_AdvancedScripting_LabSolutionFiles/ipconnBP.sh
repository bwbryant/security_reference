#! /bin/sh
timeroundtomins () {
	H=`echo $1 | sed 's/\([0-9]*\):.*/\1/'`
	M=`echo $1 | sed 's/[0-9]*:\([0-9]*\):.*/\1/'`
	S=`echo $1 | sed 's/[0-9]*:[0-9]*:\([0-9]*\).*/\1/'`
	APM=`echo $1 | sed 's/[0-9]*:[0-9]*:[0-9]* \([AP]M\).*/\1/'`
	if [ $S -ge 30 ]
	then
		M=`expr $M + 1`
	fi
	if [ $M -ge 60 ]
	then
		M=00
		H=`expr $H + 1`
	fi
	if [ $H -eq 13 ]
	then
		H=01
		APM=PM
	elif [ $H -eq 24 ]
	then
		H=00
		APM=AM
	elif [ $H -lt 10 ]
	then
		H=0$H
	fi
	echo $H:$M$APM
}
durroundtomins () {
	H=`echo $1 | sed 's/\([0-9]*\):.*/\1/'`
	M=`echo $1 | sed 's/[0-9]*:\([0-9]*\):.*/\1/'`
	S=`echo $1 | sed 's/[0-9]*:[0-9]*:\([0-9]*\).*/\1/'`
	if [ $S -ge 30 ]
	then
		M=`expr $M + 1`
	fi
	if [ $M -ge 60 ]
	then
		M=00
		H=`expr $H + 1`
	fi
	echo $H:$M$APM
}

IFS=,
COUNT=0
while read CONN DATE TIME DURATION PROTO SRCPORT DESTPORT SRCIP DESTIP ATTACK TYPE
do
	if [ $COUNT -ne 0 ]
	then
		TIMEMIN="`timeroundtomins $TIME`"
		DURMIN="`durroundtomins $DURATION`"
	else
		TIMEMIN='TIME (MINUTES)'
		DURMIN='DURATION (MINUTES)'
	fi
	echo "$CONN,$DATE,$TIME,$TIMEMIN,$DURATION,$DURMIN,$PROTO,$SRCPORT,$DESTPORT,$SRCIP,$DESTIP,$ATTACK,$TYPE"
	COUNT=`expr $COUNT + 1`
done < connect.csv
