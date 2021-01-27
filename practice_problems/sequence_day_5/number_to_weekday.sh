#!/bin/bash -x
read -p "enter the number between 1 to 7" num

if [ $num -eq 1 ]
then
	echo 'Monday'
elif [ $num -eq 2 ]
then
	echo 'Tuesday'
elif [ $num -eq 3 ]
then
	echo 'Wednesday'
elif [ $num -eq 4 ]
then
	echo 'Friday'
elif [ $num -eq 5 ]
then
	echo 'Saturday'
elif [ $num -eq 6 ]
then 
	echo 'Sunday'
fi
