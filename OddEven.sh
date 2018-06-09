# WASS to check for odd even number

echo -e "Enter a number: "
read n
rem=`expr $n % 2`
if [ $rem == 0 ]
then
	echo -e "$n is Even"
elif [ $rem == 1 ]
then
	echo -e "$n is Odd"
fi

