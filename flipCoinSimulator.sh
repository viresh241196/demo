#!/bin/bash -x
result=$((RANDOM%2))
if [ $result -eq 0 ]
then
	echo "heads"
else
	echo "tails"
fi
