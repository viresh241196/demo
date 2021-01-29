#!/bin/bash -x
count_of_heads=0
count_of_tails=0
while [ $count_of_heads -lt 21 ] && [ $count_of_tails -lt 21 ]
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		((count_of_heads++))
	else
		((count_of_tails++))
	fi
	if [ $count_of_heads -eq $count_of_tails ]
	then
		(( count_of_heads-5 ))
		(( count_of_heads-5 ))
	fi

done
if [ $count_of_heads -eq $count_of_tails ]
then
        echo "its a tie"

elif [ $count_of_heads -lt $count_of_tails ]
then
	difference=$((count_of_tails-count_of_heads))
	echo "tails won by " $difference
elif [ $count_of_heads -gt $count_of_tails ]
then
        difference=$((count_of_heads-count_of_tails))
        echo "heads won by " $difference
fi

echo $count_of_heads
echo $count_of_tails
