echo -e "Enter number to reverse: "
read n
rev=0
if [ $n -lt 0 ]
then
	ncopy=`expr $n \* -1`
else
	ncopy=$n
fi
while [ $ncopy -gt 0 ]
do
	rem=`expr $ncopy % 10`
	temp=`expr $rev \* 10`
	rev=`expr $temp + $rem`
	ncopy=`expr $ncopy / 10`
done
if [ $n -lt 0 ]
then
	rev=`expr $rev \* -1`
fi
echo -e "Reversed number is ---> $rev"
