echo -n "Enter name for new file : "
read fname
touch $fname
echo -e "\nNew file created successfully. Enter content: "
cat > $fname
echo "______________________________________________________________"
echo -e "\n\nFile : "
echo $fname
echo -e "\nFile content : "
cat $fname
echo -e "\nSorted file content : "
sort $fname
echo -e "\nFile content in uppercase : "
cat $fname | tr 'a-z' 'A-Z'
echo "______________________________________________________________"
echo -e "\nEnter no. of lines to read from start : "
read n
head -$n $fname
echo "______________________________________________________________"
echo -e "\nEnter key to search : "
read key
echo "Lines containing the entered key : "
grep $key $fname
echo "______________________________________________________________"
echo -e "\nRename this file to : "
read nfname
mv $fname $nfname
echo "______________________________________________________________"
echo -e "\nEnter limits for cutting range : "
read ll ul
cut -c $ll-$ul $nfname
echo "______________________________________________________________"
echo -e "\nName of file to delete : "
read delfname
rm $delfname
echo "Deleted successfully"
echo "______________________________________________________________"
