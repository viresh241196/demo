#!/bin/bash -x
read -p "enter the number " num

function check_prime(){
	local num=$1
	i=2
	flag=0
	end=$(( num / 2 ))
	while [ $i -le $end ]
	do
        	check=$(( num % i ))
	        if [ $check == 0 ]
	        then
	                flag=1
        	fi
	        i=$((i + 1))
	done
	if [ $flag -eq 1 ]
	then
	         result1=False
	else
        	result1=True
	fi
	echo $result1
}

function check_palindrome() {
	local num=$1
	s=0
	rev=''
	temp=$num
	while [ $num -gt 0 ]
	do
	        s=$(( $num % 10 ))
	        num=$(( $num / 10 ))
	        rev=$( echo ${rev}${s} )
	done
	if [ $temp -eq $rev ]
	then
	        result2=True
	else
	        result2=False
	fi
	echo $result2
}

ans1="$( check_prime $num )"
ans2="$( check_palindrome $num)"
if [ $ans1 == True ] && [ $ans2 == True ]
then
	echo 'number is prime and palindrome'
elif [ $ans1 == True ]
then
	echo 'number is prime'
elif [ $ans2 == True ]
then 
	echo 'number is palindrome'
else
	echo ' number is not prime not palindrome'
fi
