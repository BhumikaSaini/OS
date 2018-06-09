echo -e "Get prime numbers upto: "
read n
i=2
while [ $i -le $n ]
do
	ul=`expr $i / 2`
	flag=0
	j=2
	while [ $j -le $ul ]
	do
		rem=`expr $i % $j`
		if [ $rem == 0 ]
		then
			flag=1
		fi
		if [ $flag == 1 ]
		then
			break
		fi
		j=`expr $j + 1`
	done
	if [ $flag == 0 ]
	then
		echo -n "$i  "
	fi
	i=`expr $i + 1`
done
echo ""
