echo -e "Enter the number: "
read n
i=1
while [ $i -le 10 ]
do
	term=`expr $n \* $i`
	echo -e "$n X $i = $term"
	i=`expr $i + 1`
done
