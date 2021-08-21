#!/bin/bash
#shell script to accept a file name from user. 
#Check whether file has all the permissions if not assign the respective permissions to that file
#08/13/21 - Tricia - Created

read -p "enter the name of a file: " filename

if [ -f $filename ] 
then
    if [ -r $filename ] && [ -w $filename ] && [ -x $filename ]
    then
        echo "this file $filename has full permissions:"
        ls -l $filename 
    else
        echo "adding missing permissions to file $filename"
        chmod 777 $filename
    fi
else echo "this is not a file"
fi



<<cmt
#This script will be used to test if a certain file has all read write and excute permissions
#Then assign the permission to the file
#!/bin/bash
echo -n " Please enter the filename to check it permissions: "
read filename
if [ -f $filename ]&&[ -r $filename ]&&[ -w $filename ]&&[ -x $filename ]; then
echo " The file exist and it has all the permissions required "
ls -l $(pwd) | grep $filename
else
 echo " The file lacks some permission so,we are going to add those permissions as follows "
 echo " see the permissions before we use the script to change it for your clarity!! "
ls -l $(pwd) | grep $filename
 echo " Changing permissions starting.... "
 chmod ugo=rwx $filename
echo " see details below"
ls -l $(pwd) | grep $filename
fi
cmt
