#!/bin/bash
while read server user password command
do
	echo "Executing $command on $server as $user and passwd: $password"
	sshpass -p $password ssh -n -o StrictHostKeyChecking=No $user@$server "$command"
done < serversinfo.txt
