declare -a nama
declare -a password
declare -a zelda
declare -a witcher
declare -a story
id=0
buat_akun (){
i=0
j=0
k=0
echo "masukkan nama"
read bnama
nama[$id]=$bnama
echo "masukkan password"
read bpassword
password[$id]=$bpassword
echo "akun telah dibuat :)"
echo "id anda : "$id
echo "tolong diingat ya"
let id=$id+1
}

saran(){
echo "masukkan judul komentar :"
read judul
mousepad $judul
echo "komentar telah ditambahakan"
echo "1. sembunyikan komentar"
echo "2. tampilkan  komentar"
echo "pilihan kamu ? "
read komen
if [ $komen == 1 ]
then
chamod $judul 700
fi

if [ $komen == 2 ]
then
chamod $judul 744
fi

}

rgame_zelda () {

echo "masukkan angka rate 1-5"	
read rate_zelda


if [ $rate_zelda -le 5 ]
then
	zelda[$i]=$rate_zelda
let i=$i+1
else 
echo "angka rate salah"
fi

x=0
total=0
while [ $x -le $i ]
		do
			
			let total=$total+zelda[$x]
			let x=$x+1
		done
		let rata_zelda=$total/$i
		echo "ratting untuk zelda: "$rata_zelda
}

rgame_witcher (){
echo "masukkan angka rate 1-5"	
read rate_witcher

if [ $rate_witcher -le 5 ]
then
	witcher[$j]=$rate_witcher
let j=$j+1
else 
echo "rate salah"
fi
x=0
total=0
while [ $x -le $j ]
		do
			
			let total=$total+witcher[$x]
			let x=$x+1
		done
let rata_witcher=$total/$j
echo "rating untuk witcher: "$rata_witcher

}

rgame_story (){
echo "masukkan angka rate 1-5"	
read rate_story

if [ $rate_story -le 5 ]
then
	story[$k]=$rate_story
let k=$k+1
else 
echo "rate salah"
fi
x=0
total=0
while [ $x -le $k ]
		do
			
			let total=$total+story[$x]
			let x=$x+1
		done
let rata_story=$total/$k
echo "ratting untuk story: "$rata_story

}

bgame_zelda () {

echo "harga zelda Rp. 200.000"
echo "masukkan nomor rekening anda"
read norek
echo "pembayaran sukses"
echo "game akan dikirimkan segera"
sleep 4		
}

bgame_witcher () {

echo "harga the witcher 3 Rp. 250.000"
echo "masukkan nomor rekening anda"
read norek
echo "pembayaran sukses"
echo "game akan dikirimkan segera"
sleep 4		
}

bgame_story () {

echo "harga story of seasone Rp. 150.000"
echo "masukkan nomor rekening anda"
read norek
echo "pembayaran sukses"
echo "game akan dikirimkan segera"
sleep 4		
}

while true
do
echo "selamat datang "
echo "1. pembuatan akun"
echo "2. login"
echo "pilihan anda"
read pilihan
clear
if [ $pilihan -eq 1 ]
then
	buat_akun
		
fi

if [ $pilihan -eq 2 ]
then
echo "masukkan nama"
read lnama
echo "masukkan password"
read lpassword
echo "masukkan id"
read lid
clear
if [[ "$lnama" == "${nama[$lid]}" && "$lpassword" == "${password[$lid]}" ]]
	then
	while true
	do	
	echo "login succes"
	echo "1.beli game"
	echo "2.rate game"	
	echo "3.komentar"	
	echo "4.exit"
	echo "pilihan anda"
	read pilih	
	clear
	if [ $pilih -eq 1 ]
	then
	echo "1.zelda - Rp.200.000"
	echo "2.the witcher 3 Rp. 250.000 "
	echo "3.story of seasone back to nature - Rp. 150.000"
	echo "pilihan anda"
	read subpilih	
		if [ $subpilih -eq 1 ]
		then
		bgame_zelda
		sleep 4		
		clear
		fi
		if [ $subpilih -eq 2 ]
		then
		bgame_witcher
		sleep 4		
		clear		
		fi
		if [ $subpilih -eq 3 ]
		then
		bgame_story
		sleep 4		
		clear
		fi
	fi
	
	if [ $pilih -eq 2 ]
	then	
	echo "1.zelda "
	echo "2.the witcher 3 "	
	echo "3.story of seasone back to nature "	
	echo "pilihan anda :"
	read subpilih
		if [ $subpilih -eq 1 ]
		then
		rgame_zelda
		fi
		if [ $subpilih -eq 2 ]
		then
		rgame_witcher
		fi
		if [ $subpilih -eq 3 ]
		then
		rgame_story
		fi	
	fi
	
	if [ $pilih -eq 3 ]
	then
		saran
	fi

	if [ $pilih -eq 4 ]
	then
		exit
	fi
done
else 
echo "ada yang salah nih"
fi
fi
done
