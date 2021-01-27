#!/bin/bash -x
min=$((100 + RANDOM%900))
max=$min
for ((num=1;num<5;num++))
do
	next_number=$((100 + RANDOM % 900 ))
		if [ $next_number -gt $max ]
		then
			max=$next_number
		fi
		if [ $next_number -lt $min ]
		then
			min=$next_number
		fi
done
echo $max
echo $min
