#!/bin/bash -x
read -p 'enter the year ' year
four=$(($year % 4 ))
hundred=$(($year % 100))
fhundred=$(($year % 400))
if [ $four -eq 0 ] 
then
	if [ $hundred -eq 0 ]
	then
		if [ $fhundred -eq 0 ]
		then
			echo 'leap year'
		else
			echo 'not leap year'
		fi
	else
		echo 'leap year'
	fi
else
	echo 'not leap year'
fi
