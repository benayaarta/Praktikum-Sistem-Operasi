bil=1

echo -n "Masukkan Nilai: "
read nilai
while [ $bil -le $nilai ]
do
  if [[ 0 -eq "($bil%3) + ($bil%5)" ]]
  then
 
	echo "fizz buzz"
  elif [[ 0 -eq "($bil%5)" ]]
  then

	echo "buzz"
  elif [[ 0 -eq "($bil%3)" ]]
  then
 
	echo "fizz"
   else
	echo "$bil"
   fi    
  bil=$(( $bil + 1 ))
done
