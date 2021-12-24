#! /bin/sh
#
#
#if master file not there, create it
#
for i in *
do
	echo `ls -sail "$i"` `shasum "$i"`
done
