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
    for j in `seq $1 -1 $i`
    do
        echo -n " "
    done
    for k in `seq $i`
    do
        if [ $k -eq 1 ] || [ $k -eq $i ] || [ $i -eq $1 ]
        then
        echo -n "*"
    else
        echo -n " "
    fi
    done
    echo
done

