#!/bin/bash
clear
IFS=',' read -a aray
size=${#aray[*]}
for (( i =0; i<$size; i++ ))
do 
   for (( j=0; j<$size-$i-1; j++))
   do 
      if [[ ${aray[j]} -gt ${aray[j+1]} ]]
      then
          t=${aray[j]}
          aray[j]=${aray[j+1]}
          aray[j+1]=$t
      fi 
   done
done
echo ${aray[*]}