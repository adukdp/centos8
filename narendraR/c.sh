#!/bin/bash
#Author: BADAL
#cn=1
echo "start of loop"
for eachfile in $(ls /home/adminuser/*.sh)
do
	#if [[ cn -eq 1 ]]
	#	then
			echo "$eachfile"
                        exit
			#((cn++))
        #fi
done
echo "end of loop"
