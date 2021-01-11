#!/usr/bin/bash
cat serversinfo1.txt | awk 'NR!=1 {print}' | while IFS="," read f1 f2 f3 f4 f5
do
	echo "$f1 $f2"
done
