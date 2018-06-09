# if [ condition ]
# then
#	 action
# elif [ condition ]
# then
#	action
# else
#	action
# fi
#COMPARISONS
# -gt -> greater than
# -lt-> less than
# -et
# -net
# -ge
# -le
# for strings ==
# -a for and
# -o for or
# WASS, menu driven, to find largest and smallest of 3 given numbers

echo -e "Please enter 3 numbers: "
read n1
read n2
read n3
echo -e "___________OPERATIONS___________\n\n"
echo -e "\t1 ---> Smallest number\n"
echo -e "\t2 ---> Greatest number\n"
echo -e "________________________________\n\n"
echo -e "Enter your choice: "
read choice
case $choice in

1)
	if [ $n1 -le $n2 -a $n1 -le $n3 ]
	then		
		smallest=$n1
	elif [ $n2 -le $n1 -a $n2 -le $n3 ]
	then		
		smallest=$n2
	elif [ $n3 -le $n2 -a $n3 -le $n1 ]
	then
		smallest=$n3
	fi
	echo -e "Smallest number ---> $smallest\n"
;;

2)
	if [ $n1 -ge $n2 -a $n1 -ge $n3 ]
	then		
		greatest=$n1
	elif [ $n2 -ge $n1 -a $n2 -ge $n3 ]
	then		
		greatest=$n2
	elif [ $n3 -ge $n2 -a $n3 -ge $n1 ]
	then		
		greatest=$n3
	fi
	echo -e "Greatest number ---> $greatest\n"
;;

esac
