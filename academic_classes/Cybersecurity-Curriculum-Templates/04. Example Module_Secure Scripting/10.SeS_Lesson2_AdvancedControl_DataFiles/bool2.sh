#! /bin/sh
echo 'we assign 1 to X and test if 0 <= $X <= 10'

X=1

if [ "$X" -ge 0 -a "$X" -le 10 ]
then
	echo "X, which is $X, is between 0 and 10"
else
	echo "X, which is $X, is not between 0 and 10"
fi

echo 'we assign -1 to X and test if $X < -7 or $X >= 10'

X=-1

if [ "$X" -lt -7  -o "$X" -ge 10 ]
then
	echo "X, which is $X, is less than -7 or greater than or equal to 10"
else
	echo "X, which is $X, is not less than -7 nor greater than or equal to 10"
fi

echo 'we assign 100 to X and test if 0 <= $X <= 10 or $X is 100'
X=100

if [ \( "$X" -ge 0 \) -a \( "$X" -eq 100 -o "$X" -le 10 \) ]
then
	echo "X, which is $X, is between 0 and 10 or is 100"
else
	echo "X, which is $X, is not between 0 and 10 and is not 100"
fi

exit 0
