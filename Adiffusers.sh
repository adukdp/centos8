#!/bin/bash
while read server user password command
do
	echo "$server"
done < serversinfo.txt
