echo -e "\nPlease enter first number: "
read n1
echo -e "\nPlease enter second number"
read n2
echo -e "\n\nBEFORE SWAPPING"
echo -e "\nn1 --> $n1"
echo -e "\nn2 --> $n2"
n1=`echo $n1 + $n2|bc -l`
n2=`echo $n1 - $n2|bc -l`
n1=`echo $n1 - $n2|bc -l`
echo -e "\n\nAFTER SWAPPING"
echo -e "\nn1 --> $n1"
echo -e "\nn2 --> $n2"

