#! /bin/bash -x
function farenheit(){
	read -p "Enter the temp in Celsius " degC
	degF=$((($degC*(9/5))+32))
	echo " Temperature in Farenheit " $degF
}
function celcius(){
	read -p "Enter the Temperature in Farenheit " degF
	degC=$((($degF-32)*(5/9)))
	echo " Temperature in Celsius : " $degC
}
read -p " Enter 1 to convert to farenheit else press 2 to convert to celsius " num
if [ $num -eq 2 ]
then
	celcius
else
	farenheit
fi
case $num in
	1)
		if [ $degF -le 32 ]
		then
			echo "Freezing Point"
		elif [ $degF -ge 212 ]
		then
			echo " Boiling Point "
		fi
		;;
	2)
		if [ $degC -le 0 ]
		then
			echo " Freezing Point "
		elif [ $degC - ge 100 ]
		then
			echo " Boiling Point "
		fi
		;;
	*)
		echo " Enter correct Value "
		;;
esac

