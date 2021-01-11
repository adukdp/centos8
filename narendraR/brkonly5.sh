#!/usr/bin/bash

echo "start of loop"
for each in $(seq 1 10)
do
	if [[ $each -ne 5 ]]
	then
		echo "$each"
	fi
done
echo "end of loop"
