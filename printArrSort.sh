echo "Enter array size: "
read n
for (( i=0; i<$n; i++ ))
do
	echo "Enter array element: "
	read a[$i]
done

echo "Entered array is: "
for (( i=0; i<$n; i++ ))
do
	echo -n "${a[$i]} "
done
echo ""

#ascending
for (( i=0; i<$n; i++ ))
do
	for (( j=0; j<$n-1; j++ ))
	do
		if [ ${a[j]} -gt ${a[$j+1]} ]
		then
			temp=${a[$j]}
			a[$j]=${a[$j+1]}
			a[$j+1]=$temp
		fi
	done
done
echo "Ascending: "
for (( i=0; i<$n; i++ ))
do
	echo -n "${a[$i]} "
done
echo ""

#descending
for (( i=0; i<$n; i++ ))
do
	for (( j=0; j<$n-1; j++ ))
	do
		if [ ${a[j]} -lt ${a[$j+1]} ]
		then
			temp=${a[$j]}
			a[$j]=${a[$j+1]}
			a[$j+1]=$temp
		fi
	done
done
echo "Descending: "
for (( i=0; i<$n; i++ ))
do
	echo -n "${a[$i]} "
done
echo ""
