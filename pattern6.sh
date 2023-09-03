#!bin/bash
<<Doc
Name:diamond
Input:
Output:
Description:
Author:
Doc
read -p "enter the range" n
for((i=1 ;i<=n ;i++))
do

    for((j=1 ;j<=n-i ;j++))
    do
        echo -n " "
  
   done
    for((k=1 ;k<=2*i-1 ;k++))
    do
        echo -n "*"
    done
    echo
done
for((x=n-1 ;x>=1 ;x--))
do
    for((y=1 ;y<=n-x ;y++))
    do
        echo -n " "
    done
    for((z=1 ;z<=2*x-1 ;z++))
    do
        echo -n "*"
    done
    echo
done
