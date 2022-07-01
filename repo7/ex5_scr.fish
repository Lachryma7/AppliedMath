#!/bin/fish
set list $(cat ex5_data.txt)
set sum (math 0)
set sum_sq (math 0)
set i (math 0)

for f in $list
set sum (math $sum+$f)
set sum_sq (math $sum_sq+$f\*$f)
set i (math $i+1)
end

set ave (math $sum/$i)
set var (math $sum_sq/$i-$ave\*$ave)
echo $ave, $var