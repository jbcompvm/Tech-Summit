#!/bin/bash

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

#View Storage


ViewStorage=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWORD "$SERVICE_URL$RESOURCES_SC" | jq -r .entities[].name)
echo $ViewStorage

sleep 5