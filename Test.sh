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
RESOURCES_TASK_LIST="/tasks/list/"

#create Network
#NetworkCreate()
#{
#lear
#echo -n "Choose your network name: > "
#read networkadd
#createNetwork=$(curl --insecure -s -H $CT -X POST -u $USER:$PASSWORD -d '{"name": $networkadd,"vlan_id":0}' "$SERVICE_URL$RESOURCES_NET")
#}

#curl -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' -d '{ "name":"test", "vlan_id":1 }' "$SERVICE_URL$RESOURCES_NET"



gatherTask=$(curl --insecure -s -H $CT -X POST -u $USER:$PASSWORD -d '{"cluster_uuid":"string","complete_time_usecs":0,"create_time_usecs":0,"display_name":"string","entity_list":[{"entity_id":"string","entity_name":"string","entity_type":"NODE"}],"last_updated_time_usecs":0,"message":"string","meta_request":{"method_name":"string"},"meta_response":{"error_code":0,"error_detail":"string"},"operation_type":"string","parent_task_uuid":"string","percentage_complete":0,"progress_status":"QUEUED","start_time_usecs":0,"subtask_info_list":[{}],"subtask_uuid_list":["string"],"uuid":"string"}],"error_info":{"count":0,"entity_list":["string"],"message":"string"},"metadata":{"count":0,"end_index":0,"filter_criteria":"string","grand_total_entities":0,"next_cursor":"string","page":0,"previous_cursor":"string","search_string":"string","sort_criteria":"string","start_index":0,"total_entities":0}' "$SERVICE_URL$RESOURCES_TASK_LIST")
echo $gatherTask


