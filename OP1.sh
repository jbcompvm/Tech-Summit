#!/bin/bash

echo "Displaying details of VMs, IP Addresses and Containers";
		echo -e "\t Press A to Display VM Info";
		echo -e "\t Press B to Display VM IP Addresses";
		echo -e "\t Press C to Display Container Details";
		echo -e "\t Press D to Quit"
		echo -e "\t Enter choice ";
		read opt2
		echo "Sub Menu Option Selected is $opt2"

		case $opt2 in
		A)  ./Get_VM.sh ;;
		B)	./Get_IP.sh ;;
		C)	./ViewSC.sh;;
		D)
			exit;
		esac

		;;