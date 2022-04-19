#!/bin/bash
echo "ENTER THE NUMBERS:"
IFS="," read -a num
p=${#num[*]}
for((i = 0; i<p; i++))
do
for((j = 0; j<(p-i-1); j++))
do
if [ ${num[j]} -gt ${num[j+1]} ]
then
temp=${num[j]}
num[$j]=${num[$((j+1))]}  
num[$((j+1))]=$temp
fi
done
done
for i in "${!num[@]}"  
do  
echo The key value of element "$i" is "${num[$i]}"  
done
