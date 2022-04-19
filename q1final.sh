#!/bin/bash
file1=$1
echo "1a:"
echo
echo
echo
grep -v '^$' $1
echo
echo
echo
echo "1b:"
echo
echo
echo
awk '!a[$0]++' $1