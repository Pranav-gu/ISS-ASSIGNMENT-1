#!/bin/bash
echo "SIZE OF FILE IN BYTES IS:"
wc -c $1 | awk '{print $1}'
echo "TOTAL NUMBER OF LINES IN THE FILE IS:"
wc -l $1 | awk '{print $1}'
echo "TOTAL NUMBER OF WORDS IN THE FILE IS:"
wc -w $1 | awk '{print $1}'
i=1
echo "WORDS IN EACH LINE ARE AS FOLLOWS:"
while IFS= read -r line
do
input=$line
words=( $input )
echo "Line No.$i-Count of Words:${#words[@]}"
let i=$i+1
done <"$1"
echo "LIST OF REPEATED WORKS AND NUMBER OF TIMES THEY ARE REPEATED IS AS FOLLOWS:"
tr [:space:] '\n' <$1| sort -n |uniq -cd|sort -k1rn -k2n|awk '{print "Word:"$2,"Count of Repetition:"$1}'|sed 's/^ \+//; s/ / - /'
echo