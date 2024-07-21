#! /bin/bash

echo "DELETE MATCHED REGEX"
echo "massshred <directory> <regex>"

for f in $(ls "$1"| tr " " "\n" | grep "$2") ;
do
	echo $f
	shred -vfuzn5 $f 
done

