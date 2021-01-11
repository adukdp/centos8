#!/usr/bin/bash

print_header(){
	printf "#%0.s" $(seq 1 $(tput cols))
	printf "\n"
}

center_msg(){
	msg=$1
	terminalcol=$(tput cols)
	msg_len=$(echo ${#1})
	pre_space=$(($((terminalcol-msg_len))/2))

	print_header
	printf " %0.s" $(seq 1 $pre_space)
	printf "%s" "$1"
	printf "\n"
	print_header
}

check_remotepass(){
	if [ ! -e "remotepass" ]
	then
		center_msg "Please store your passwords in >>remoteserver<< file and retry"
		exit 1
	fi
}

check_remoteuser(){
        if [ ! -e "remoteuser" ]
        then
                center_msg "Please store your remoteuser names in >>remoteuser<< file and retry"
                exit 2
        fi
}

check_list_of_server(){
        if [ ! -e "list_of_server" ]
        then
                center_msg "Please store your ips/fqn names in >>list_of_server<< file and retry"
                exit 3
        fi
}


center_msg "WELCOME TO INVENTORY SCRIPT"
check_remotepass
check_remoteuser
check_list_of_server

sshpass -f remotepass ssh -n -o StrictHostKeyChecking=No -o PubkeyAuthentication=No adminuser@192.168.1.2 "cat /etc/os-release" | grep -w "NAME" | awk -F "NAME=" '{ print $2 }' | tr '"' " "

sshpass -f remotepass1 ssh -n -o StrictHostKeyChecking=No -o PubkeyAuthentication=No bad@192.168.1.3 "cat /etc/os-release" | grep -w "NAME" | awk -F "NAME=" '{ print $2 }' | tr '"' " "




center_msg="Thank You For Using This Shell Script"
