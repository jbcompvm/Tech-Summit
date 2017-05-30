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
SERVICE_URL1="https://10.68.69.102:9440/PrismGateway/services/rest/v1"
RESPONCE_CODE="%{http_code}\n"

#RESOURCES
RESOURCES_VM="/vms/"
RESOURCES_SC="/storage_containers/"
RESOURCES_IM="/images/"
RESOURCES_NET="/networks/"
RESOURCES_TASK_LIST="/tasks/list/"
RESOURCES_HEALTH="/health_checks/"

#create Network
#NetworkCreate()
#{
#lear
#echo -n "Choose your network name: > "
#read networkadd
#createNetwork=$(curl --insecure -s -H $CT -X POST -u $USER:$PASSWORD -d '{"name": $networkadd,"vlan_id":0}' "$SERVICE_URL$RESOURCES_NET")
#}

#curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ "name":"test", "vlan_id":1 }' "$SERVICE_URL$RESOURCES_NET"



gatherHealth=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWORD "$SERVICE_URL1$RESOURCES_HEALTH")
echo $gatherHealth

sleep 5

