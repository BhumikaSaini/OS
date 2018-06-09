cnt=1
while [ $cnt -eq 1 ]
do
	echo "________STRING OPERATIONS________"
	echo "1 ---> Compare 2 strings"
	echo "2 ---> Concatenate 2 strings"
	echo "3 ---> Find string length"
	echo "4 ---> Reverse a string"
	echo "0 ---> EXIT"
	echo "_________________________________"
	echo "Enter your choice: "
	read ch
	case $ch in
		
		1)
			echo "Enter first string: "
			read s1
			echo "Enter second string: "
			read s2
			flag=0
			ccount1=`echo -n $s1|wc -c`
			ccount2=`echo -n $s2|wc -c`
			if [ $ccount1 -eq $ccount2 ]
			then
				for (( i=1; i<=$ccount1; i++ ))
				do
					c1=`echo -n $s1|cut -c $i`
					c2=`echo -n $s2|cut -c $i`
					if [ "$c1" != "$c2" ]
					then
						echo "Strings unequal !"
						flag=1
						break
					fi
				done
				if [ $flag -ne 1 ]
				then
					echo "Strings equal !"
				fi
			else
				echo "Strings unequal !"
			fi
		;;
		
		2)
			echo "Enter first string: "
			read s1
			echo "Enter second string: "
			read s2
			s3=$s1$s2
			echo "Concatenated string ---> $s3"
		;;
		
		3)
			echo "Enter a string: "
			read s
			len=`echo -n $s|wc -c`
			echo -e "Length of \"$s\" ---> $len"
		;;
		
		4)
			echo "Enter a string: "
			read s
			rev=""
			len=`echo -n $s|wc -c`
			for (( i=$len; i>0; i-- ))
			do
				rev=$rev`echo -n $s|cut -c $i`
			done
			echo "Reversed string ---> $rev"
		;;
		
		0)
		;;
		
		*)
			echo "INVALID CHOICE !"
		;;
	esac
	echo "Enter 1 to choose another operation: "
	read cnt
done
