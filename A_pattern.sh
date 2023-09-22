#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
n=$1
mid=$((n/2+1))
for i in `seq $n`
do
    for k in `seq $n -1 $i`
    do
        echo -n " "
    done
    rows=$((2*i-1))
    for j in `seq $rows`
    do
        if [ $j == 1 ] || [ $j == $((2*j-1)) ] || [ $j == $rows ] || [ $i -eq $mid ]
        then
            echo -n "*"
        else
          echo -n " "
        fi
    done
 echo
 done
