#!/bin/bash
#Author: BADAL
cn=1
for eachfile in $(ls /home/adminuser/*.sh)
do
	if [[ cn -eq 1 ]]
		then
			echo "$eachfile"
                	((cn++))
        fi
done
