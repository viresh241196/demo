#!/bin/bash -x
read -p " enter the number " num
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
	echo "number is palindrome"
else
	echo "number is not palindrome"
fi
