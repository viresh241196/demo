#!/bin/bash -x
count_of_heads=0
count_of_tails=0
for (( i=0;i<=10;i++))
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		((count_of_heads++))
	else
		((count_of_tails++))
	fi
done
echo $count_of_heads
echo $count_of_tails
