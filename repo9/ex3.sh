#!/bin/sh

FILE="bt.dat"
if [ ! -f ${FILE} ]
then
    touch bt.dat
fi

echo $1 >> bt.dat
gnuplot bt.gpl