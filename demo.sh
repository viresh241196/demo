#!/bin/bash -x
random=$((RANDOM%3))
isFullTime=2
isPartTime=1
absent=0
empRatePerHr=20;

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
salary=$((empHrs*empRatePerHr))
echo $salary


