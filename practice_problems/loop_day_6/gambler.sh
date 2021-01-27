#!/bin/bash -x
money=100
won_count=0
bet_count=0
while [ $money -gt 0 ] && [ $money -lt 200 ]
do
	result=$((RANDOM%2))
	bet_count=$((bet_count + 1 ))
	if [ $result -eq 0 ]
	then
		money=$(( money - 1 ))
	else
		money=$((money + 1 ))
		won_count=$((won_count + 1 ))
	fi
done

echo $bet_count
echo $money
echo $won_count
