#!/bin/bash
#accept a file name from the user and make a copy of that file.
#created by tsmikle

read -p "enter the name of a file: " filename

echo "the file name you entered is: $filename"
echo "creating the file..."
touch $filename

echo "now copying the file..."
newname=$filename_copy
cp $filename copy_of_input

