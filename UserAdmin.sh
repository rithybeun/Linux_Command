#!/bin/bash
function chkpermis(){

echo "File: $1"

	if [ -s $1 -a -x $1 ]; then

		./$1
	else
		echo " Wait 1 second to add x permission to it"
		chmod +x $1
	echo "You File is running as"
	./$1
	fi
}
echo "1. Create user"
echo "2. Delete user"
echo "3. Rename user"
echo "4. Changepwd user"
echo "5. Dis_Ena_user"
echo "6. Exit"
echo -n "Please input number(1,2,3,4,5,6):"
read num
case $num in 
	1) echo "Create user"
	file=CreateUser.sh
	chkpermis $file ;;
	2) echo "Delete user"
	file=DeleteUser.sh 
	chkpermis $file ;;
	3) echo "Rename user"
	file=RenameUser.sh 
	chkpermis $file ;;
	4) echo "Change password user"
	file=ChangePasswdUser.sh
	chkpermis $file ;;
	5) echo "Disable Enable user"
	file=Dis_Ena_User.sh
	chkpermis $file ;;
	*) echo "Exit"
	echo "See you next time | By BeunRithy" 
	exit;;
esac
