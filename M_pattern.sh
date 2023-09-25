#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
for i in `seq $1`
do
    for j in `seq $1`
    do
        if [ $j -eq 1 -o $j -eq $1 ]
        then
            echo -n "*"
        fi
        if [ $j -eq $i -a $i -le $(($1/2)) -o $j -eq $(($1-i)) -a $i -le $(($1/2)) ]
        then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo
done
