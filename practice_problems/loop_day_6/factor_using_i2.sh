#!/bin/bash -x
read -p "enter the number " num
index=0
for (( i=1;((i*i))<=num;i++))
do
        val=$(( num % i ))
        if [ $val == 0 ]
        then
                flag=0
                end=$((i/2))
                for (( p=2;p<=$end;p++))
                do
                        check=$(( i % p ))
                        if [ $check == 0 ]
                        then
                                flag=1
                                break
                        fi
                done
                if [ $flag == 0 ]
                then
                        arr[((index++))]=$i
                fi
        fi
done
echo ${arr[@]}
