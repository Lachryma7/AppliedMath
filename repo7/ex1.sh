#!/bin/sh
sum=$1
i=$(($2/10))
while [ $i -ne 0 ]
do
sum=$((sum+sum/10))
i=$((i-1))
done
echo $sum