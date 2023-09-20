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
        if [ $i -eq $j ]
        then
            echo -n "*"
        elif [ $j -eq $(($1-i+1)) ]
        then
            echo -n "*"
        else
            echo -n " "
        fi
        
    done
    echo
done

