#!/bin/bash
###
#Gets existing networks and prints out VMs and IPs to the associated network
#Exports network of 
###


#CONTENT TYPE
CT="Content-Type:application/json"

#USERNAME AND PASSWORD SETTINGS
USER="james.brown@gso.lab"
PASSWD="c0nveX11"

#SERVICE URL
SERVICE_URL="https://10.4.91.59:9440/PrismGateway/services/rest/v2.0"
SERVICE_URL1="https://10.4.91.59:9440/PrismGateway/services/rest/v1"

#JSON CODES
RESPONSE_CODE="%{http_code}\n"
RESOURCE_NET="/networks/"
RESOURCE_ADY="/addresses/"
RESOURCE_VMS="/vms/"
JQ_NETUUID=" | jq -r entities[].uuid"


#run curl to get list of all networks
VMDATA=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWD "$SERVICE_URL1$RESOURCE_VMS")

#filter on list of networks to just get network uuid
VMIP=$(echo $VMDATA | jq -r .entities[]."vmName" : "Win2003")

echo $VMIP



#echo "URL is $SERVICE_URL$RESOURCE_NET$NETUUID$RESOURCE_ADY"

#run curl to get list of all network data
#VMDATA=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWD "$SERVICE_URL$RESOURCE_NET$NETUUID$RESOURCE_ADY")

#filter network data on each VM's UUID
#VMUUID=$(echo $VMDATA | jq -r .entities[].entity_uuid)

#print out VM UUIDs
#echo "VM UUID(s):"
#echo $VMUUID

#filter network data to get each VM's IP address
#VMIPS=$(echo $VMDATA | jq -r .entities[].ip_address)

#print out VM IP addresses
#echo "IP ADDRESS(es):"
#echo $VMIPS

sleep 5

