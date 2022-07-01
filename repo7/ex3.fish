#!/bin/fish
set sum $argv[1]
set i (math -s0 $argv[2]/10)
while [ $i -ne 0 ]
    set sum (math -s0 $sum+$sum/10)
    set i (math $i-1)
end
echo $sum