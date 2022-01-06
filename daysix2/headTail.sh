#! /bin/bash -x
h=0
t=0

while [ $h -lt 11 ] && [ $t -lt 11 ]
do
	flip=$((($RANDOM%2)+1))
	if [ $flip -eq 1 ]
	then
		echo "head"
		((h++))
	else
		echo "tail"
		((t++))
	fi
done
echo "Heads wins: " $h "Tail wins: " $t
if [ $h -gt $t ]
then
	echo " Heads are Maximum "
else
	echo " Tails are Maximum "
fi
