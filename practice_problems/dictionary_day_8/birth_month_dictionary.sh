#!/bin/bash -x
index=0
month[((index++))]="jan"
month[((index++))]="feb"
month[((index++))]="mar"
month[((index++))]="apr"
month[((index++))]="may"
month[((index++))]="jun"
month[((index++))]="jul"
month[((index++))]="aug"
month[((index++))]="sep"
month[((index++))]="oct"
month[((index++))]="nov"
month[((index++))]="dec"
echo ${month[@]}
declare -A store
for i in ${month[@]}
do
	count=$((1 + RANDOM%10))
	store[$i]=$count
	
done
echo ${store[@]}
echo ${!store[@]}
