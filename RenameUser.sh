echo "Input old_name to rename:"
read oldname
getent passwd $oldname > /dev/null 2&>1
if [ $? -eq 0 ]; then

	echo "Input the new_name:"
	read newname
	usermod -l $newname $oldname
	echo "Rename has been completed"
else
	echo "Then user doesn't exist"
fi 
