#!/bin/bash -x
read -p "start" start
read -p 'end' end
while [ $start -le $end ]
do
	i=2
	flag=1
	while [ $i -lt $start ]
	do
		if [ `expr $start % $i` -eq 0 ]
		then
			flag=0
			break
		else
		i=`expr $i + 1`
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo $start
	fi
	start=`expr $start + 1`
done
