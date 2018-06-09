echo -e "Enter first number: "
read n1
echo -e "Enter second number: "
read n2
if [ $n1 -lt $n2 ]
then
	smaller=$n1
	larger=$n2
else
	smaller=$n2
	larger=$n1
fi
gcd=1
i=1
while [ $i -le $smaller ]
do
	rem1=`expr $smaller % $i`
	if [ $rem1 -eq 0 ]
	then
		rem2=`expr $larger % $i`
		if [ $rem2 -eq 0 ]
		then
			gcd=$i
		fi
	fi
	i=`expr $i + 1`
done
echo -e "GCD of $n1 & $n2 ---> $gcd"
