clear
echo -e "____________________________________\n"
echo -e "\tBINARY SEARCH\n"
echo -e "____________________________________\n"
echo -e "Enter array size: "
read n
echo -e "Enter array elements: "
for (( i=0; i<$n; i++ ))
do
	read a[$i]
done
echo -e "Array displayed at once by @= "
echo -e  ${a[@]}
echo -e "Array displayed at once by *= "
echo -e  ${a[*]}
echo -e "Array length  by @= "
echo -e  ${#a[@]}
echo -e "Array length by *= "
echo -e  ${#a[*]}
echo -e "Array elements in a range"
echo -n "Enter limits: "
read ll ul
len=`expr $ul - $ll + 1`
echo ${a[@]:$ll:$len}

# Bubble Sort
for (( i=0; i<$n; i++ ))
do
	for (( j=0; j<`expr $n-1`; j++ ))
	do
		if [ ${a[`expr $j + 1`]} -lt ${a[$j]} ]
		then
			t=${a[$j]}
			a[$j]=${a[$j+1]}
			a[$j+1]=$t
		fi
	done
done
echo -e "Sorted array displayed at once by *= "
echo -e  ${a[*]}
echo -e "Enter element to search: "
read key
l=0
found=0
pos=-1
u=`expr $n - 1`
while [ $l -le $u -a $l -ge 0 -a $u -le `expr $n - 1` ]
do
	mid1=`expr $l + $u`
	mid=`expr $mid1 / 2`
	if [ $key -eq ${a[$mid]} ]
	then
		found=1
		pos=$mid
	break
	elif [ $key -lt ${a[$mid]} ]
	then
		u=`expr $mid - 1`
	else
		l=`expr $mid + 1`
	fi
done
if [ $found -eq 1 ]
then
	echo -e "$key found at index $mid"
else
	echo -e "$key not found"
fi

echo -e "Enter strings array size: "
read n
echo -e "Enter array elements: "
for (( i=0; i<$n; i++ ))
do
	read a[$i]
done
echo -e "Array displayed at once by @= "
echo -e  ${a[@]}
echo -e "Array length  by @= "
echo -e  ${#a[@]}
echo "Enter substring to replace : "
read rwat
echo "Enter replacement substring : "
read rwith
echo ${a[@]//$rwat/$rwith}
