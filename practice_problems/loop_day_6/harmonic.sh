#!/bin/bash -x
read -p "enter the number to find harmonic value " num
H1=1
end=$(( $num + 1 ))
for (( i=2; i<=$end ;i++ ))
do
	echo $i
	H1=`awk 'BEGIN {print '$H1' + 1/'$i'}'`
done
echo $H1

