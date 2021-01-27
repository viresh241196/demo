#!/bin/bash -x
index=0
for (( count=1 ; count< 50 ; count++))
do
	case $count in
	11)
		arr[((index++))]=$count;;
	22)
                arr[((index++))]=$count;;
	33)
                arr[((index++))]=$count;;
	44)
                arr[((index++))]=$count;;
	55)
                arr[((index++))]=$count;;
	66)
                arr[((index++))]=$count;;
	77)
                arr[((index++))]=$count;;
	88)
                arr[((index++))]=$count;;
	99)
        	arr[((index++))]=$count;;
	*)
	esac
done
echo ${arr[@]}
