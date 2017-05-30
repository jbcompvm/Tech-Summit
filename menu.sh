#!/bin/bash

while true; do

clear
echo "Welcome to the DevOps Kitchen!"
echo -e "\t Press #1 to Display VMs, IP Addresses and Container Details";
echo -e "\t Press #2 to Display Tasks and Health Data";
echo -e "\t Press #3 to Change the variables for a Container";
echo -e "\t Press #4 to Create a Network";
echo -e "\t Press #5 to Change an External Data Services IP";
echo -e "\t Press #6 to Quit"
echo -e "\t Enter choice ";
read opt
clear
#echo "Option is $opt"

    case $opt in
	1)  ./OP1.sh ;;
	2)  ./OP2.sh ;;
	3)	./ChangeSC.sh ;;
	4)	./AddNetwork.sh ;;
	5)  ./change_external_IP.sh ;;
	6) 
		exit;
    esac

done
