#! /bin/sh
for i in 1 2 3 4 5
do
	if [ `expr "$i" % 2` -eq 0 ]
	then
		continue
	fi
	echo "$i"
done

