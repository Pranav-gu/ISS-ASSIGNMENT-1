#!/bin/bash
echo "ENTER A STRING FOR PART A AND PART B"
read A
strlen=${#A}
echo "5a:"
echo
for ((i=strlen-1;i>=0;i--));
do
revA=$revA${A:$i:1}
done
echo "$revA"
echo 
echo
echo "5b:"
echo
for ((i=0;i<strlen;i++));
do
char=${revA:$i:1}
printf -v num %d "'$char"
(( num += 1 ))
printf -v newchar \\$(printf '%03o' "$num")
newA=$newA${newchar}
done
echo "$newA"
echo
echo
echo
echo "ENTER NEW STRING FOR PART C"
read B
strlen=${#B}
for ((i=(strlen/2)-1;i>=0;i--));
do
revB=$revB${B:$i:1}
done
for ((i=(strlen/2);i<strlen;i++))
do
newB=$newB${B:$i:1}
done
echo "$revB$newB"
