#!/bin/bash -x
headc=0
tailc=0
while [ $headc -le 11 ] && [ $tailc -le 11 ]
do
	coin=$(( RANDOM % 2))
	if [ $coin -eq 1 ]
	then
		headc=$((headc + 1))
	else
		tailc=$((tailc + 1))
	fi
done
echo $headc
echo $tailc
