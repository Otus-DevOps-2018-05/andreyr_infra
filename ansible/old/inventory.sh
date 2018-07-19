#!/bin/bash

# Get IPs of instances
app_ip=$(gcloud compute instances list --filter="name:reddit-app" --format="value(networkInterfaces[0].accessConfigs[0].natIP)")
db_ip=$(gcloud compute instances list --filter="name:reddit-db" --format="value(networkInterfaces[0].accessConfigs[0].natIP)")

if [ "$1" == "--list" ] ; then
cat << EOF | tee inventory.json
{
  "app": {
	"hosts": [ "${app_ip}" ],
  },
  "db": {
	"hosts": [ "${db_ip}" ],
  },
} 
EOF
elif [ "$1" == "--host" ]; then
  echo '{"_meta": {"hostvars": {}}}'
else
  echo "{ }"
fi
