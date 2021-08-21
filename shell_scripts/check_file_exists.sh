#!/bin/bash
#shell script to accept file name from the user and display the contents of file. 
#If the file doesn't exist then try curbing the error and display a user friendly error to user.
#08/13/21 - Tricia - Created

read -p "enter the name of a file: " filename

if [ -f $filename ] 
then
    echo "this is the contents of the file:"
    cat $filename
else
    2> /dev/null
    echo "sorry, file $filename does not exist"
fi

