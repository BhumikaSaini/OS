echo -e "To compute a^b"
echo -e "Enter a: "
read a
echo -e "Enter b: "
read b
ans=1
i=1
while [ $i -le $b ]
do
	ans=`expr $ans \* $a`
	i=`expr $i + 1`
done
echo -e "Answer ---> $ans"
