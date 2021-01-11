#!/usr/bin/bash
cat serversinfo.txt | while read line
do
	echo "$line"
	echo "-----"
done
