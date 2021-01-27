#!/bin/bash -x
read -p 'enter first number ' a
read -p 'enter second number ' b
read -p 'enter third number ' c

operation1=$((a + b * c))
operation2=$((a*b +c))
