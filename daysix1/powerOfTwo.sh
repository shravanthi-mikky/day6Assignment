#! /bin/bash -x
read -p "Enter The number " num
power=2
for ((i=0;i<=$num;i++))
do
	power=$((2**$i))
	echo " 2 power " $i " = " $power
done
