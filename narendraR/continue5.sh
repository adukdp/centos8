#!/usr/bin/bash
echo "start of loop"
for each in $(seq 1 10)
do
	if [[ $each -eq 5 ]]
	then
		continue
	fi
	echo "$each"
done
echo "end of loop"
