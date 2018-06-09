echo "Enter a string: "
read str
len=`echo -n $str|wc -c`
for (( i=1, j=$len; i<=len; i++, j-- ))
do
	chl=`echo -n $str|cut -c $i`
	chr=`echo -n $str|cut -c $j`
	if [ "$chl" != "$chr" ]
	then
		echo -e "\"$str\" is not palindrome"
		exit
	fi
done
echo -e "\"$str\" is palindrome"
