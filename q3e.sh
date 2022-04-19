#!/bin/bash
ws=$(cat "quotes.txt" | tr ' ' '\n' | awk '!x[$0]++')
while read -r w; 
do
    x=$(grep -o "$w" "quotes.txt" | wc -l)
    if (( $x>1 ))
    then 
        echo "$w $x"
    fi
done <<< "$ws"