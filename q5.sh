#!/bin/sh
read strng
len=${#strng}
echo $strng | rev
echo "$strng" | rev | tr a-z b-za
for (( i=($len-1)/2; i>=0; i-- ));
do 
   rev2=$rev2${strng:$i:1}
done
rev3="${strng:((len/2))}"
echo "$rev2$rev3"