echo -e "Enter number of lines: "
read n
for (( i=0; i<$n; i++ ))
do
	for (( j=0; j<=$i; j++ ))
	do
		echo -n " * "	
	done
	echo " "
done
m=`expr $n - 1`
for (( i=$m; i>0; i-- ))
do
	for (( j=$i; j>0; j-- ))
	do
		echo -n " * "	
	done
	echo " "
done
