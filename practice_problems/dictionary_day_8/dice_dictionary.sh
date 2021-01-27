#!/bin/bash -x

declare -A records
for (( i=1; i<=6 ; i++ ))
do
	records[i]=0
done
min=100
max=0
while True
do
	dice=$((RANDOM%6 + 1))
	record[dice]=$((record[dice] + 1))
	if [ $min -gt ${record[dice]} ]
	then
		min_key=$dice
		min=${record[dice]}
	fi
	if [ ${record[dice]} -ge 10 ]
	then
		max=${record[dice]}
		max_key=$dice
		break
	fi
done
echo $max_key
echo $max
echo $min_key
echo $min
