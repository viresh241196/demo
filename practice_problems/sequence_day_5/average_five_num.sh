#!/bin/bash -x
num=5
count=1
result=0
for ((count;count<=num;count++))
do
	number=$((RANDOM%100))
	result=$(($result + $number))
done
average=$(($result / $num))
