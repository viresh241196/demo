#!/bin/bash -x
random=$((RANDOM%3))
full=2
part=1
absent=0
if [ $random = $full ];
then
        rateperhr=20
        emphr=8
        salary=$(( $rateperhr * $emphr))
elif [ $random = $part ];
then
        ratePerHr=20
        empHr=4
        salary=$(( $ratePerHr * $empHr))
else
        salary=0
fi

