echo "Input n_User For Create: "
read num
if [ $num -gt 0 ]; then
for((i=1; i<=$num; i++))
	do
	uname=username$i
	useradd $uname 
	randompw=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
	echo $randompw | passwd --stdin $uname
	done
echo "All Account Has Been Created"
else
	echo "Value input is less than 1"
	echo "Please Try again later"
fi
