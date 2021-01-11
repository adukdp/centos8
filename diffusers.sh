#!/bin/bash
while read eachserversinfo
do
	echo "$eachserversinfo"
done < serversinfo.txt
