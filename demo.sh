#!/bin/bash -x
isFullTime=2
isPartTime=1
absent=0
empRatePerHr=20;
workingday=0
while [ $workingday -le 20 ]
do
	random=$((RANDOM%3))
	case $random in
	                $isFullTime )
	                        empHrs=8
	                        ;;
        	        $isPartTime )
                	        empHrs=4
                        	;;
	                *)
        	                empHrs=0
                	        ;;
	esac
	salary=$((salary + empHrs*empRatePerHr))
	if [ $random -ne 0 ]
	then
		((workingday++))
	fi
done
echo $salary


