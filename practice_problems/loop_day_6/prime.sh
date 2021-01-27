#!/bin/bash -x
read -p "enter the number " num
i=2
flag=0
end=$(( num / 2 ))
while [ $i -le $end ]
do
	check=$(( num % i ))
	if [ $check == 0 ]
	then
		flag=1
	fi
	i=$((i + 1))
done
if [ $flag -eq 1 ]
then
	echo 'not prime'
else
	echo 'prime'
fi
