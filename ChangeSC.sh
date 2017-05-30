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

#Change Storage

ChangeSC=$(curl --insecure -s -H Content-Type:application/json -X PUT -u admin:nutanix4u  -d '{"name": "MY_STORAGE", "storage_container_uuid": "5975510a-8704-414d-920c-be272baf0d90"}' "$SERVICE_URL$RESOURCES_SC")


#ViewStorage=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWORD "$SERVICE_URL$RESOURCES_SC" | jq -r .entities[].name)
echo "Storage Container name changes"
echo $ChangeSC
sleep 5
#url -X GET --header 'Accept: application/json' 'https://10.68.69.102:9440/api/nutanix/v2.0/storage_containers/'