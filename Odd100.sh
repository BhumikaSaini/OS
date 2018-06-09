for (( i=0; i<=100; i++ ))
do
	rem=`expr $i % 2`
	if [ $rem -eq 1 ]
	then
		echo -n "$i  "
	fi
done
echo ""
