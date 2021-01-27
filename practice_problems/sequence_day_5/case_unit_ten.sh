#!/bin/bash -x
read -p " enter the number 1,10,100,1000 " num
case $num in
1)
echo 'unit';;
10)
echo 'ten';;
100)
echo 'hundred';;
1000)
echo 'thousand';;
*)
echo 'invalid';;
esac
