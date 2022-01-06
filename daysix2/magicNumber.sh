#! /bin/bash -x
magic=$((($RANDOM%100)+1))
high=100
low=1
if [ $magic -eq $high ]
then
	echo " Number is : " $magic
fi
if [ $magic -eq $low ]
then
	echo " Number is : " $magic
fi
while [ $magic -lt high ]
do
	mid=$(($high/2))
	if [ $magic -eq $mid ]
	then
		echo " Number is : " $mid
	fi
	while [ $magic -ne $mid ]
	do
		if [ $magic -lt $mid ]
		then
			high=$(($mid))
			echo $high
		else
			low=$(($mid))
		fi
	done
done
