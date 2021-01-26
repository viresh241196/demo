#!/bin/bash -x
isFullTime=2
isPartTime=1
absent=0
empRatePerHr=20;
workingday=0
workinghr=0
max_working_day=20
max_working_hr=50
while [ $workingday -le $max_working_day ] && [ $workinghr -le $max_working_hr ]
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
	workinghr=$((workinghr + empHrs))
	salary=$((salary + empHrs*empRatePerHr))
	if [ $random -ne 0 ]
	then
		((workingday++))
	fi
done
echo $salary


