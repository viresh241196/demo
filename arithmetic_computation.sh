#!/bin/bash -x
read -p 'enter first number ' a
read -p 'enter second number ' b
read -p 'enter third number ' c
declare -A store

operation1=$((a + b * c))
operation2=$((a*b +c))
operation3=$((c+a/b))
operation4=$((a%b+c))
store[1]=$operation1
store[2]=$operation2
store[3]=$operation3
store[4]=$operation4
