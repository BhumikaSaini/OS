#!/bin/sh

echo -e "Enter the daily salary"
read base
echo -e "No of days the employ was absent"
read aday
basesal=$(( $base * 30 ))
cutsal=$(( $base * $aday ))
newsal=$(( $basesal - $cutsal ))
c=$(( 40 * $newsal ))
da=$(( $c / 100 ))
echo -e "DA is :- $da"
b=$(( 20 * $newsal ))
hr=$(( $b / 100 ))
echo -e "HRA is  :- $hr"
gros=$(( $newsal + $da ))
gross=$(( $gros + $hr ))
echo -e "Gross salary is :- $gross"
