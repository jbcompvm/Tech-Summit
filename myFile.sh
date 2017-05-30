#!/bin/bash

#content-type
CT="Content-Type:application/json"

#User and Password
USER="admin"
PASSWORD="nutanix/4u"


#Curl vars
#generate_post_data={"description":"test","guest_os":"string","memory_mb":0,"name":"string","num_cores_per_ vcpu":0,"num_vcpus":0,"vm_disks":[{"disk_address":{"device_bus":"ide","device_index":0} ,"is_cdrom":true,"is_empty":false,"vm_disk_clone":{"disk_address":{"vmdisk_uuid":"string" }}},{"disk_address":{"device_bus":"scsi","device_index":0},"vm_disk_create":{"storage_co ntainer_uuid":"string","size":0}},{"disk_address":{"device_bus":"ide","device_index":1},"is_ cdrom":true,"is_empty":false,"vm_disk_clone":{"disk_address":{"vmdisk_uuid":"string"}}}]," hypervisor_type":"ACROPOLIS","affinity":null}




#GET UUID
#TASKUUID=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWORD "$SERVICE_URL$RESOURCES_VM" | jq -r .entities[].uuid)

#services
SERVICE_URL="https://10.68.69.102:9440/PrismGateway/services/rest/v2.0"
RESPONCE_CODE="%{http_code}\n"

#RESOURCES
RESOURCES_VM="/vms/"
RESOURCES_SC="/storage_containers/"
RESOURCES_IM="/images/"

#response_code
#STATUS=$(curl --write-out $RESPONCE_CODE --insecure -s --output /dev/null -H $CT -X GET -u $USER:$PASSWORD "$SERVICE_URL$RESOURCES_VM")
#echo "Status: "$STATUS


#VALUE=$(curl --insecure -s -H $CT -X GET -u $USER:$PASSWORD "$SERVICE_URL$RESOURCES_VM" | jq -r .entities[].vm_disk_info[0].disk_address.vmdisk_uuid)

#echo "Disk UUID: " $VALUE

#Create a VM
TASKUUID=$(curl --insecure -H $CT -X POST -u $USER:$PASSWORD "$SERVICE_URL$RESOURCES_VM" -d @vm.json | jq -r .task_uuid)
echo $TASKUUID

#VMUUID=curl -X GET --header 'Accept: application/json' 'https://10.68.69.102:9440/api/nutanix/v2.0/tasks/fa39da9d-e645-48fd-8bdb-84300b15e9fc'
#GET created VM



#Power on/off vm


#Find status

#Change status


#Delete VM