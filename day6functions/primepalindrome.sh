read -p "Enter The NUmber : " num
#checking for prime or not*****
function prime(){
	i=2
	#flag variable
	f=0
	while test $i -le `expr $num / 2`
	do
		if test `expr $num % $i` -eq 0
		then
			f=1
		fi
		#increment the loop variable
		i=`expr $i + 1`
	done
	if test $f -eq 1
	then
	echo "Not Prime"
	else
	echo "Prime"
	fi
}
prime
# Storing the remainder
function palindrome(){
	s=0
	rev=""
	temp=$num
	while [ $num -gt 0 ]
	do
    		s=$(( $num % 10 ))
		num=$(( $num / 10 ))
    		rev=$( echo $rev$s )
	done
	if [ $temp -eq $rev ]
	then
    		echo "Number is palindrome"
	else
    		echo "Number is NOT palindrome"
	fi
}
palindrome
num=$(($rev))
echo $num
prime

