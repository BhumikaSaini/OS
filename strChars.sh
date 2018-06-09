echo -e "Enter the string: "
read str
wcount=`echo $str|wc -w`
echo "Word count ---> $wcount"
ccount=`echo -n $str|wc -c`
echo "Character count ---> $ccount"
scount=0
spc=' '
i=1
while [ $i -le $ccount ]
do
	ch=`echo $str|cut -c $i`
	if [ "$ch" = "$spc" ]
	then
		scount=`expr $scount + 1`
	fi
	i=`expr $i + 1`
done
echo "Space count ---> $scount"
echo -e "\nEnter chahracter to check for vowel/consonant: "
read char
if [ "$char" == "a" -o "$char" == "e" -o "$char" == "i" -o "$char" == "o" -o "$char" == "u" -o "$char" == "A" -o "$char" == "E" -o "$char" == "I" -o "$char" == "O" -o "$char" == "U" ]
then
	echo "$char is a vowel"
else
	echo "$char is a consonant"
fi
