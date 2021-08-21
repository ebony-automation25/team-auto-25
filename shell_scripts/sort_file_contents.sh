#!/bin/bash
#shell script to accept a file name from the user and sort the file. 
#If the file doesn’t exist curb the error message and show the user-friendly message.
#08/13/21 - Tricia - Created

read -p "enter the name of a file: " filename

if [ -f $filename ] 
then
    echo "sorting the contents of the file..."
    sort $filename
else
    2> /dev/null
    echo "sorry, file $filename does not exist"
fi

