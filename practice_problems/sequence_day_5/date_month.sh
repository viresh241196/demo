#!/bin/bash -x
read -p "enter the day " day
read -p "enter the month " month
march="march"
june="june"
march_start=20
march_end=31
june_end=20
if [ $march_start -le $day ] && [ $day -le $march_end ] && [ $month == $march ]
then
	echo 'true'
elif [ $day -le 20 ] && [ $month == $june ]
then
	echo 'true'
else
	echo 'false'
fi
