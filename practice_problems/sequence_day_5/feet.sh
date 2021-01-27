#!/bin/bash -x
feet=12
num=42
constant=3.281
result1=$(($feet * $num))

rec_x=60
rec_y=40
mul=$(($rec_x * $rec_y))
result2=`awk 'BEGIN {print '$mul' / '$constant'}' `

plots=25
result3=`awk 'BEGIN{print '$result2'*25 }'`
