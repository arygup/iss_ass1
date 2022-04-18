#!/bin/bash
echo "size of quotes.txt ="
echo "$(stat -c%s "quotes.txt")"
cat quotes.txt | wc -l
cat quotes.txt | wc -w
awk '{ print "line no: " NR " "  "count of words: " NF }' quotes.txt 
 