echo -n "Input username for change password: "
read name
getent passwd $name > /dev/null 2&>1
if [ $? -eq 0 ]; then
	passwd $name
else
	echo "Then username doesn't exist"
fi 
