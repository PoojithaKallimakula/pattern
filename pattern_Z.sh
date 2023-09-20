#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
for i in `seq $1 -1 1`
do
    for j in `seq $1`
    do
        if [ $i -eq 1 ] || [ $i -eq $1 ] || [ $j -eq $i ]
        then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo 
done
