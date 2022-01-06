#! /bin/bash -x
i=1
power=2
read -p "Enter The Number: " num
while [ $i -le $num ] && [ $power -lt 256 ]
do
	power=$((2 ** $i))
	echo " 2 power" $i " = " $power
	((i++))
done
echo $power
