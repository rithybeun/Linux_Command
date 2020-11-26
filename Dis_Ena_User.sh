


echo "1. Disable User"
echo "2. Enable User"
echo "3. Exit"
echo -n "Please, Input number(1,2,3):"
read num
case $num in
	1) echo "Disable user"
	echo -n "Input username for disable: "
	read uname
	getent passwd $uname > /dev/null 2&>1
	if [ $? -eq 0 ]; then
	usermod -L $uname
	echo "The username: $uname has been disable"
	else
	echo "The user doesn't exist"
	fi ;;
	2) echo "Enable user"
	echo -n "input user for enable: "
	read unames
	getent passwd $uname > /dev/null 2&>1
	if [ $? -eq 0 ]; then
	usermod -U $unames
	echo "Then username: $unames has been Enable"
	else
	echo "The user doesn't exits"
	fi ;;
	*) echo "Quit"
	echo "See you next time | from BeunRithy"
	exit;;
esac

