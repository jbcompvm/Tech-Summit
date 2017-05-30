#!/bin/bash

echo "Displaying details of VMs, IP Addresses and Containers";
		echo -e "\t Press A to Display Current Task";
		echo -e "\t Press B to Display Current health";
		echo -e "\t Press C to Quit"
		echo -e "\t Enter choice ";
		read opt2
		echo "Sub Menu Option Selected is $opt2"

		case $opt2 in
		A)  ./Tasks.sh;;
		B)	./Health.sh ;;
		C)
			exit;
		esac

		;;
        