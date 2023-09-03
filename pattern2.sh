#!bin/bash
<<Doc
Name: pyramid
Input:
Output:
Description:
Author:k poojitha
Doc
read -p "enter the range" n
for((i=1 ;i<=n ;i++))
do
    for((j=1 ;j<=n-i ;j++))
    do 
        echo -n " "
    done
    for((z=1 ;z<=2*i-1 ;z++))
    do
        echo -n "*"
    done
    echo
done

