echo 'masukkan bilangan'
read bil
menit=60
jam=3600

if [ $bil -ge $jam ]
then
    	let hasil=$bil/$jam
    	let sisadet=$bil%$jam
    	let sisadet2=$sisadet%$menit
    	let hasil2=$sisadet/$menit

    	echo $hasil' jam '$hasil2' menit '$sisadet2' detik'

elif [ $bil -ge $menit ]
then
    	let sisadet2=$bil%$menit
    	let hasil2=$bil/$menit
    	echo $hasil2' menit '$sisadet2' detik'
else
    	echo $bil' detik '
fi
