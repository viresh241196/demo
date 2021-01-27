#!/bin/bash -x
read -p "enter the first number " a
read -p "enter the second number " b
read -p "enter the third number " c
op1=$(( a + b * c))
max=$op1
min=$op1
op2=$(( c + a / b))
if [ $op2 -gt $max ]
then
        max=$op2
fi
if [ $op2 -lt $min ]
then
        min=$op2
fi

op3=$(( a % b + c))
if [ $op3 -gt $max ]
then
        max=$op3
fi
if [ $op3 -lt $min ]
then
        min=$op3
fi

op4=$(( a * b + c))
if [ $op4 -gt $max ]
then
	max=$op4
fi
if [ $op4 -lt $min ]
then
	min=$op4
fi
echo $max
echo $min
