#!/bin/sh
for i in 1 2 3 4 5 6 7 8 9 10
do
    touch file-$i.txt
    num1=$(($i+1))
    num2=$(($i+2))
    echo $num1 $num2 >> file-$i.txt
done