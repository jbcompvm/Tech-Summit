#!/bin/bash
###
#Gets existing networks and prints out VMs and IPs to the associated network
###


#CONTENT TYPE
CT="Content-Type:application/json"

#USERNAME AND PASSWORD SETTINGS
USER="admin"
PASSWD="nutanix4u"

#SERVICE URL
SERVICE_URL="https://10.68.69.102:9440/PrismGateway/services/rest/v2.0"

#JSON CODES
RESPONSE_CODE="%{http_code}\n"
RESOURCE_NET="/networks/"
RESOURCE_ADY="/addresses/"
JQ_NETUUID=" | jq -r entities[].uuid"


#run curl to get list of all networks
NETDATA=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWD "$SERVICE_URL$RESOURCE_NET")

#filter on list of networks to just get network uuid
NETUUID=$(echo $NETDATA | jq -r .entities[1].uuid)

echo $NETUUID

#echo "URL is $SERVICE_URL$RESOURCE_NET$NETUUID$RESOURCE_ADY"

#run curl to get list of all network data
VMDATA=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWD "$SERVICE_URL$RESOURCE_NET$NETUUID$RESOURCE_ADY")

#filter network data on each VM's UUID
VMUUID=$(echo $VMDATA | jq -r .entities[].entity_uuid)

#print out VM UUIDs
echo "VM UUID(s):"
echo $VMUUID

#filter network data to get each VM's IP address
VMIPS=$(echo $VMDATA | jq -r .entities[].ip_address)

#print out VM IP addresses
echo "IP ADDRESS(es):"
echo $VMIPS

sleep 5

