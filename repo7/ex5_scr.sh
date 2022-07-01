#!/bin/sh
list=$(cat ex5_data.txt)

for f in $list
do
sum=$((sum+f))
sum_sq=$((sum_sq+f*f))
i=$((i+1))
done

ave=$((sum/i))
var=$((sum_sq/i-ave*ave))
echo $ave, $var