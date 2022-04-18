#!/bin/bash
grep -v "^$" quotes.txt > empty.txt
mv empty.txt quotes.txt