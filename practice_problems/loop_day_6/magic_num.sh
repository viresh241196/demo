#!/bin/bash -x
read -p "enter the number in range 0 to 10  " num
start=0
end=10
value=`awk 'BEGIN {print ('$end'-'$start')/2}'`
while [ $value -ne $num ]
do 
	echo "enter if number g or l then" $value
	read -p '' input
	echo $input
	if [ $input == 'g' ]
	then
		start=$((start + value ))
		value=`awk 'BEGIN {print ('$end'-'$start')}'`
        	value=$((value / 2))
		value=$((start + value))
	fi
	if [ $input == 'l' ]
        then
		end=$((end - value ))
		value=`awk 'BEGIN {print ('$end'-'$start')}'`
                value=$((value / 2))
                value=$((end - value))
	fi
done
echo "your number is $value"
