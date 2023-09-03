#!bin/bash
<<Doc
Name:square
Input:
Output:
Description:
Author:
Doc
read -p "enter the range" n
for((i=1 ;i<=n ;i++))
do
    for((j=1 ;j<=n ;j++))
    do
        echo -n "*"
    done
    echo
done
