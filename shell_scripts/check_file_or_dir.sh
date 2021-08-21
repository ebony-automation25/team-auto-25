#!/bin/bash
<<cmt
shell script to accept a file name from user and check whether its an ordinary file or a directory. 
In case of file show the contents of file and if it’s a directory show number of files in that directory
#08/13/21 - Tricia - Created
cmt

read -p "enter the name of a file or directory: " name

if [ -f $name ] 
then
    echo -e "this is the contents of the file: \n"
    cat $name
elif [ -d $name ]
then
    echo "number of files in the folder: "
    ls | wc -l 
else
    2> /dev/null
    echo "sorry, $filename does not exist"
fi

