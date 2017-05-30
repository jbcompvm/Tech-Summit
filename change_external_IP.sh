#! /bin/bash
clear
echo "Input External IP Address:"
read VMIPADDRESS
echo "Input External Data Services IP Address:"
read NEWIP
curl --insecure -X PUT -H "Content-Type: application/json" -u admin:nutanix4u -H "Cache-Control: no-cache" -d "{\"name\": \"Unnamed\", \"clusterExternalIPAddress\": null, \"clusterExternalDataServicesIPAddress\": \"$NEWIP\"}" "https://$VMIPADDRESS:9440/PrismGateway/services/rest/v1/cluster"

clear
echo "External IP updated"
sleep 2