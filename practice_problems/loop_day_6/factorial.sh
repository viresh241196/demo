#!/bin/bash -x
read -p "enter the number" num
result=1
for (( count=1; count<=$num; count++))
do
	result=$(($result*$count))
done
echo $result
