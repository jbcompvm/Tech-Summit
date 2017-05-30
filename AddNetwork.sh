#!/bin/bash
clear
#VAR
#networkadd


#content-type
CT="Content-Type:application/json"



#User and Password
USER="admin"
PASSWORD="nutanix4u"


#services
SERVICE_URL="https://10.68.69.102:9440/PrismGateway/services/rest/v2.0"
RESPONCE_CODE="%{http_code}\n"

#RESOURCES
RESOURCES_VM="/vms/"
RESOURCES_SC="/storage_containers/"
RESOURCES_IM="/images/"
RESOURCES_NET="/networks/"

#create Network

createNetwork=$(curl --insecure -s -H $CT -X POST -u $USER:$PASSWORD -d '{"name": "Testme","vlan_id":0}' "$SERVICE_URL$RESOURCES_NET")

clear
echo "Network Created"
sleep 5