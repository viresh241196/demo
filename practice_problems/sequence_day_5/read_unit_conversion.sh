#!/bin/bash -x
read -p "enter the num to convert feet to inch" num
result_in_inch=`awk 'BEGIN {print '$num'*12}'`

read -p "enter the num to convert inch to feet" num
result_in_feet=`awk 'BEGIN {print '$num'/12}'`

read -p "enter the num to convert feet to meter" num
result_in_meter=`awk 'BEGIN {print '$num'*3.281}'`

read -p "enter the num to convert meter to feet" num
result_in_feet=`awk 'BEGIN {print '$num'/3.281}'`


