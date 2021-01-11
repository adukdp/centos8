#!/usr/bin/bash
filename="serversinfo.txt"
while read eachline
do
	echo "$eachline"
done < $filename

