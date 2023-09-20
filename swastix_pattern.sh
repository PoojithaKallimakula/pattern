#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
mid=$(($1/2))
for i in `seq $1`
do
    for j in `seq $1`
    do
        
        if [ $i -eq $1 ] || [ $i -eq 1 ] || [ $j -eq $1 ] || [ $j -eq 1 ] || [ $i -eq $mid ] || [ $j -eq $mid ]
        then
        if [ $i -gt 1 ] && [ $i -lt $mid ] && [ $j -eq $1 ]
        then
            echo -n " "
        elif [ $j -gt 1 ] && [ $j -lt $mid ] && [ $i -eq 1 ]
        then
            echo -n " "
        elif [ $i -gt $mid ] && [ $i -lt $1 ] && [ $j -eq 1 ]
        then
            echo -n " "
        elif [ $i -eq $1 ] && [ $j -gt $mid ] && [ $j -lt $1 ]
        then
            echo -n " "
        else
            echo -n "*"
        fi   
        else
            echo -n " "
            fi
       
    done
    echo
done

