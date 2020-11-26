echo "Input usernameID for delete:"
read num
uname=$num
getent passwd $uname > /dev/null 2&>1
if [ $? -eq 0 ]; then
	userdel $num
else
	echo "The user doesn't exist"
fi

