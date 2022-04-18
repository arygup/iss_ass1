#!/bin/bash
cat -n quotes.txt | sort -u | sort -n | cut -f2- > temp.txt
mv temp.txt quotes.txt
