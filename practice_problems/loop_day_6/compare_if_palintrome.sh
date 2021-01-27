#!/bin/bash -x
read -p " enter the first number" num1
read -p " enter the second number " num2
function check() {
	local n1=$1
	local n2=$2
	arg_pass=$#
	all=$@
	palindrome=False
	if [ $n1 == $n2 ]
	then
		palindrome=True
	fi
	echo $palindrome
}
echo $num1 $num2
result="$( check $num1 $num2 )"
if [ $result == True ]
then
	echo "palindrome"
else
	echo "not palindrome"
fi
