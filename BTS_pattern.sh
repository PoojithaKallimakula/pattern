#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
n=$((2*$1))
mid=$(($1+1))
for i in `seq $n`
do
    for j in `seq $1`
    do
        if [ $j -eq 1 ] || [ $j -eq $1 ] 
        then
            if [ $j -eq $1 -a $i -lt $1  ]
            then
                echo -n " "
            elif [ $j -eq $1 -a $i -gt $((mid+1)) ]
            then
                echo -n " "
             else
            echo -n "*"
        fi
        else
            if [ $i -lt $1 -a $j -eq $i ]
            then
                echo -n "*"
            elif [ $i -gt $((mid+1)) -a $j -eq $((n-i+2)) ]
           then
               echo -n "*"             
            else
            echo -n " "
        fi
        fi
    done
    for k in `seq $n`
    do
        if [ $k -eq 2 ] || [ $k -eq $mid ]
        then
            if [ $k -eq 2 -a $i -lt $1 ]
            then
                echo -n " "
            elif [ $k -eq 2 -a $i -gt $((mid+1)) ]
            then
                echo -n " "
            else
            echo -n "*"
        fi
        else
            if [ $i -lt $1 -a $k -eq $((mid-i+1)) ]
            then
                echo -n "*"
            elif [ $i -gt $((mid+1)) -a $k -eq $((i-$1)) ]
            then
                  echo -n "*"
            else
                echo -n " "
            fi
        fi
    done
    echo
done

