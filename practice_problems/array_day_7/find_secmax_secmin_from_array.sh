#!/bin/bash -x
index=0
for (( counter=1; counter<=8; counter++ ))
do
	num=$((RANDOM%900 + 100 ))
	array[((index++))]=$num
done
#max and sec max
if [ ${array[0]} -gt ${array[1]} ]
then
	max=${array[0]}
else
	max=${array[1]}
fi
if [ ${array[0]} -lt ${array[1]} ]
then
        sec_max=${array[0]}
else
        sec_max=${array[1]}
fi

#min and sec min
if [ ${array[0]} -lt ${array[1]} ]
then
        min=${array[0]}
else
        min=${array[1]}
fi
if [ ${array[0]} -gt ${array[1]} ]
then
        sec_mix=${array[0]}
else
        sec_mix=${array[1]}
fi
#loop
for value in ${array[@]}
do
	if [ $value -gt $max ]
	then
		sec_max=$max
		max=$value
	elif [ $value -gt $sec_max ] && [ $value -ne $max ]
	then
		sec_max=$value
	fi
	if [ $value -lt $min ]
	then
		sec_min=$min
		min=$value
	elif [ $value -lt $sec_min ] && [ $value -ne $min ]
	then
		sec_min=$value
	fi
done
echo ${array[@]}
echo $max
echo $sec_max
echo $min
echo $sec_min
