#!/bin/bash -x
attendance=$((RANDOM%2))
if [ $attendance -eq 0 ]
then
	echo "absent"
else
	echo "present"
fi


