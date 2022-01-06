#! /bin/bash -x
money=100
win=0
lose=0
while [ $money -ge 0 ] && [ $money -lt 200 ]
do
	bet=$((($RANDOM%2)))
	if [ $bet -eq 1 ]
	then
		echo "Win"
		((money++))
		((win++))
	else
		echo "lose"
		((money--))
		((lose++))
	fi
done
echo " Number of Wins: " $win
echo "Number of loses: " $lose
echo " Gambler left with Money: " $money
