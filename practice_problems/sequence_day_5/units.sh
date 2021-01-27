#!/bin/bash -x
read -p " enter the number " num
if [ $num -eq 1 ]
then
        echo 'unit'
elif [ $num -eq 10 ]
then
        echo 'Ten'
elif [ $num -eq 100 ]
then
        echo 'hundred'
elif [ $num -eq 1000 ]
then
        echo 'thousand'
else
	echo 'invalid'
fi

