clear
nxt="y"
while [ $cnt="y" ]
do
	echo "_____________________CALCULATOR SIMULATOR______________________"
	echo -e "\nIntegers\n\n"
	echo -e "\n1	Addition"
	echo -e "\n2	Subtraction"
	echo -e "\n3	Multiplication"
	echo -e "\n4	Division"
	echo -e "\n\nFloats\n\n"
	echo -e "\n5	Addition"
	echo -e "\n6	Subtraction"
	echo -e "\n7	Multiplication"
	echo -e "\n8	Division"
	echo -e "\n\n0	EXIT"
	echo -e "\n\nPlease enter your choice: "
	read ch
	echo -e "\nEnter first number: "
	read n1
	echo -e "\nEnter Second number: "
	read n2

	case $ch in

		0)
			exit
		;;

		1)
			ans=`expr $n1 + $n2`
			echo -e "\nSUM-> $ans"
		;;

		2)
			ans=`expr $n1 - $n2`
			echo -e "\nDIFFERENCE-> $ans"
		;;

		3)
			ans=`expr $n1 \* $n2`
			echo -e "\nPRODUCT-> $ans"
		;;

		4)
			ans=`expr $n1 / $n2`
			echo -e "\nQUOTIENT-> $ans"
		;;

		5)
			ans=`echo $n1 + $n2|bc -l`
			echo -e "\nSUM-> $ans"
		;;

		6)
			ans=`echo $n1 - $n2|bc -l`
			echo -e "\nDIFFERENCE-> $ans"
		;;

		7)
			ans=`echo $n1 \* $n2|bc -l`
			echo -e "\nPRODUCT-> $ans"
		;;

		8)
			ans=`echo $n1 / $n2|bc -l`
			echo -e "\nQUOTIENT-> $ans"
		;;

	esac
	echo -e "Enter 'y' to do another operation: "
	read cnt
	if [ $cnt != "y" ]
	then
		echo "EXIT..."
		exit
	fi
done

