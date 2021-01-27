#!/bin/bash -x
index=0
for (( counter=1; counter<=10; counter++ ))
do
	num=$((RANDOM%900 + 100 ))
	array[((index++))]=$num
done
x=1
temp=0
for (( i=1; i< 10; i++))
do
	for ((j=1; j < 10; j++ ))
	do
		if [ ${array[j]} -gt ${array[j+1]} ]
		then
			temp=${array[j+1]}
			${array[j+1]}=${array[j]}
			${array[j]}=$temp
		fi
	done
done

echo ${array[@]}
echo ${!array[@]}
echo "sec min ${array[1]}"
echo "sec max ${array[8]}"
