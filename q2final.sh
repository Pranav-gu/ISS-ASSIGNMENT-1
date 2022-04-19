#!/bin/bash

file="quotes.txt"
touch speech.txt
while IFS= read -r line
do
pre=`cut -d "~" -f2- <<< "$line"`
suf=`echo $line | cut -d "~" -f1`
if [ -z "$line" ]
then
continue
else
echo "$pre once said,\"" $suf"\""
fi
done <"$file"> speech.txt
sed -i 's/. "/. "./g' speech.txt