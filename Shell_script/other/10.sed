#!/bin/bash

echo "Enter file name:"
read f
echo "Enter complete file path:"
read p
path=$(find $p -type f -name $f)
if [ $? -eq 0 ]
then
echo "File found at $path"
echo "Enter word to find:"
read old
echo "Enter word to replace:"
read new
sed -i "s/$old/$new/g" "$path"
echo "The word $old was replaced with $new"
echo
echo "FILE OUTPUT:"
cat $path
else
echo "File not found"
fi
