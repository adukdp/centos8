#!/usr/bin/bash
ls -lrt | while read line
do
	echo "$line"
	echo "============================================================"
done
