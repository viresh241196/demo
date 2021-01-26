#!/bin/bash -x
random=$((RANDOM%2))
full=1
absent=0
if [ $random = $full ];
then
        rateperhr=20
        emphr=8
        salary=$(( $rateperhr * $emphr))
else
        salary=0
fi


