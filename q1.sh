#!/bin/bash
grep -v "^$" quotes.txt > empty.txt
mv empty.txt qa.txt
cat -n quotes.txt | sort -u | sort -n | cut -f2- > temp.txt
mv temp.txt qb.txt
