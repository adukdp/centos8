#!/bin/bash
while read server user password command
do
	sshpass -p $password ssh -o StrictHostKeyChecking=No $user@$server "$command"
done < serversinfo.txt
