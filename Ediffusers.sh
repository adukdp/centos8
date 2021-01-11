#!/bin/bash
while read server user password command1 command2
do
	echo "Executing $command1 on $server as $user and passwd: $password"
	sshpass -p $password ssh -n -o StrictHostKeyChecking=No $user@$server "$command1"
	echo "Executing $command2 on $server as $user and passwd: $password"
        sshpass -p $password ssh -n -o StrictHostKeyChecking=No $user@$server "$command2"
done < serversinfo1.txt
