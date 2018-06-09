#WASS to simulate the cash withdrawl process of a bank.
#Take balance & withdrawl amount from the user.
#Now, based on the withdrawl amount apply following % of tax:
#If
#< 1500 -> 2%
#1500 to <3500 -> 3%
#3500 to 5000, inclusive -> 4%
#Calculate tax & display total withdrawl & total remaining amount in account.

echo -e "_______________CASH WITHDRAWL________________\n"
echo -e "Enter balance amount: "
read balAmnt
echo -e "Enter withdrawl amount: "
read wdwlAmnt

if [ $wdwlAmnt -le $balAmnt ]
then
	if [ $wdwlAmnt -lt 1500 ]
	then
		rate=0.02
	elif [ $wdwlAmnt -ge 1500 -a $wdwlAmnt -lt 3500 ]
	then
		rate=0.03
	elif [ $wdwlAmnt -ge 3500 -a $wdwlAmnt -le 5000 ]
	then
		rate=0.04
	fi
	tax=`echo $wdwlAmnt \* $rate | bc -l`
	balAmnt=`echo $balAmnt - $wdwlAmnt - $tax | bc -l`
	echo -e "Tax amount: $tax"
	echo -e "Withdrawl amount: $wdwlAmnt"
	echo -e "Balance amount: $balAmnt"
	
else
	echo -e "Not enought balance! Try again!\n"

fi

