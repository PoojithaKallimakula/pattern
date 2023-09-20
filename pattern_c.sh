#!/bin/bash
#!/bin/bash
<<Doc
name:
input:
output:
Description:
author:
Doc
mid=$(($1%2))
if [ $mid -eq 0 ]
then
    mid=1
fi
for i in `seq $1`
do
    for j in `seq $1`
    do
        if [ $i -eq 1 ] || [  $i -eq $1 ] || [ $j -eq $mid ]
        then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo 
done

