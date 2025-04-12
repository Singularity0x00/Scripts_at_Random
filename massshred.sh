#! /bin/bash

echo "DELETE MATCHED REGEX"
echo "massshred <directory> <regex>"

echo -e "\033[0;31mARE YOU SURE YOU WANT TO PERMANENTLY DELETE EVERYTHING WITH MATCHING REGEX? : \033[0m Y? N? \n Enter Choice \033[0;31m(Y/N): \033[0m"
read choice
if [[ $choice = "Y" ]] ; then 
    for f in $(ls "$1"| tr " " "\n" | grep "$2") ;
    do
    	echo $f
    	shred -vfuzn5 $f 
    done
fi
