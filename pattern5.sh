#!bin/bash
<<Doc
Name:rectange
Input:
Output:
Description:
Author:
Doc
read -p "enter the range" n
for((i=1 ;i<=n ;i++))
do
    for((j=1 ;j<=n+2 ;j++))
    do
        echo -n "*"
    done
    echo
done
