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
        #to print hallow rectangle
        if [ $i -eq 1 -o $j -eq 1 -o $i -eq $1 -o $j -eq $1 ]
        then
            #to print spaces at the start and end of columns
            if [ $i -eq 1 -a $j -eq 1 -o $i -eq 1 -a $j -eq $1 -o $i -eq $1 -a $j -eq 1 -o $i -eq $1 -a $j -eq $1 ]
            then
                echo -n " "
            else
            echo -n "*"
        fi
        else
            #to print h alphabet
            if [ $j -eq 3 -a $i -gt 3 -o $i -gt $(($1/2)) -a $j -eq $(($1/2)) -o $i -eq $(($1/2)) -a $j -lt $(($1/2)) -a $j -gt 3 ]
            then
                echo -n "*"
            elif [ $j -eq $(($1/2+2)) -a $i -gt $(($1/2)) -o $i -eq $(($1/2)) -a $j -gt $(($1/2+2)) -a $j -lt $(($1-1)) -o $j -eq $(($1-1)) -a $i -gt $(($1/2)) -a $i -lt $(($1-$1/4)) -o $i -eq $(($1-$1/4)) -a $j -gt $(($1/2+2)) ]
            then
                echo -n "*"
            else
            echo -n " "
        fi
        fi
    done
    echo
done
