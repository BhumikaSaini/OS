echo -e "Enter the number : "
read n
facto=1
for (( i=$n; i>0; i-- ))
do
	facto=`expr $facto \* $i`
done
echo -e "Factorial of $n is ---> $facto"

