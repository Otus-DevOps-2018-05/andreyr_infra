testapp_IP = 35.228.249.9  
testapp_port = 9292  

## Create instance with startup script
```
gcloud compute instances create reddit-app1\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=startup_script.sh
  ```

## Create firewall rule via gcloud
```
gcloud compute firewall-rules create default-puma-server \
  --allow tcp:9292 \
  --source-tags=puma-server \
  --source-ranges="0.0.0.0/0"
```