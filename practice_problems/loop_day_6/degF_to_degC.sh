#!/bin/bash -x
function value_in_degF () {
	degc=$1
	degf=`awk 'BEGIN {print ('$degc'* 9/5)+32}'`
	echo $degf
}

function value_in_degC () {
        degf=$1
        degc=`awk 'BEGIN {print (('$degf'-32)*(5/9))}'`
        echo $degc
}


read -p "enter 1 to degC to degF or 2 to degF to degC" input

case $input in
	1)
	read -p " enter degC in range 0 to 100 " degc
	result="$( value_in_degF $degc )";;
	2)
	read -p " enter degF in range 32 to 212 " degf
        result="$( value_in_degC $degf )";;
	*)
	echo "invalid";;
esac

