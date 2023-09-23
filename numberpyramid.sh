#!/bin/bash
<<Doc
name:
input:
output:
1234554321
1234_ 4321
123_ _ 321
12_ _ _ 21
1_ _ _ _ 1
Description:
author:
Doc
for i in `seq $1`
do
    count1=1
    for j in `seq $1 -1 $i`
    do
        echo -n $count1
        count1=$((count1+1))
    done
    count=$(($1-i+1))
    for k in `seq $1`
    do
        if [ $k -lt $i ]
        then
            echo -n "_ "
else
    echo -n $count
    count=$((count-1))
fi
    done
    echo 
done
        
