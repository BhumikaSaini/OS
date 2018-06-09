echo -e "Enter limit for fibonacci series: "
read lim
echo -e "The Fibonacci series is : \n"
t1=0
t2=1
echo -n "$t1 $t2 "
ans=`expr $t1 + $t2`
t1=$t2
t2=$ans
while [ $ans -lt $lim ]
do
	echo -n "$ans "
	ans=`expr $t1 + $t2`
	t1=$t2
	t2=$ans
done
echo -e "\n"

