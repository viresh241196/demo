#!/bin/bash -x
read -p "enter the number between 1 to 7" num
case $num in
	1)
	echo 'monday';;
	2)
	echo 'tuesday';;
	3)
	echo 'wednesday';;
	4)
	echo 'thursday';;
	5)
	echo 'friday';;
	6)
	echo 'saturday';;
	7)
	echo 'sunday';;
	*)
	echo 'invalid';;
esac
