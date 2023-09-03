#!bin/bash
<<Doc
Name: right half  pyramid
Input:n
Output:
Description:
Author:poojitha
Doc
read -p "enter the range" n
for((i=1 ;i<=n ;i++))
do
    for((j=1 ;j<=n-i;j++))
    do 
        echo -n " "
    done
    for((z=1 ;z<=i ;z++))
    do
        echo -n "*"
    done
    echo
done

