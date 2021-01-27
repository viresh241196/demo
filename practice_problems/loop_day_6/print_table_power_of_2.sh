#!/bin/bash -x
read -p " enter the number " num
power=$((2**$num))
value=0
count=0
while [ $count -ne $power ]
do
	var=$(( 2**$value))
	echo $var
	((value++))
	count=$var
done


