#!/bin/bash -x
index=0
arr[((index++))]=1
arr[((index++))]=-1
arr[((index++))]=2
arr[((index++))]=3
found=0
for (( i=1 ; i<=2 ; i++ ))
do
	for (( j=$i+1; j<=3 ; j++ ))
	do
		for (( k=$j+1; k<=4 ; k++ ))
		do
			value=$((${arr[i]} + ${arr[j]} + ${arr[k]}))
			if [ value -eq 0 ]
			then
				echo "${arr[i]} ${arr[j]} ${arr[k]}"
				found=1
			fi
		done
	done
done
if [ $found -eq 0 ]
then
	echo 'does not exit'
fi
