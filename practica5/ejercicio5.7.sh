#!/bin/bash

if [ $( cat /etc/shells | grep -w "/bin/$1") ]
then
    touch tmp.txt
	while read linea
	do
	    user=$(echo $linea | cut -d ":" -f 1)
	    shell=$(echo $linea | cut -d ":" -f 7)
	    [ $shell = "/bin/$1" ] && echo $user >> tmp.txt
	done < /etc/passwd
	
	cat tmp.txt | sort 
	rm tmp.txt
else
    echo "La shell introducida no existe."
fi
