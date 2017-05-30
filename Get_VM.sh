#!/bin/bash

#CONTENT TYPE
CT="Content-Type:application/json"

#USERNAME AND PASSWORD SETTINGS
USER="admin"
PASSWD="nutanix4u"

#SERVICE URL
SERVICE_URL="https://10.68.69.102:9440/api/nutanix/v2.0/"

#Resource
RESOURCE_VM="/vms/"

GetVM=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWD "$SERVICE_URL$RESOURCE_VM" | jq  '.entities[] | "\(.name) \(.memory_mb) \(.num_vcpus) \(.num_cores_per_vcpu) \(.power_state)"')

echo $GetVM

sleep 5