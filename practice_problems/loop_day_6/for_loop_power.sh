#!/bin/bash -x
read -p "enter the number" num
value=0
for (( i=1; i<=((2**$num));i++ ))
do
        var=$((2**$value))
	echo $var
	((value++))
	if [ $((2**$num)) == $var ]
	then
		break
	fi
done

