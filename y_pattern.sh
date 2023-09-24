#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
n=$((2*$1))
for i in `seq $n`
do
    for j in `seq $1`
    do
        if [ $j -eq $i ]
        then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    for k in `seq $1 $n`
    do
        if [ $k -eq $((n-i+1)) ]
        then
            echo -n "*"
        fi
        if [ $k -eq $1  -a $i -gt $1 ]
        then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo
done
