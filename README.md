# Table of content
- [Homework 3: gcloud](#homework-3-gcloud)
- [Homework 4: Packer](#homework-4-packer)
- [Homework 5: terraform-1](#homework-5-terraform-1)

# Homework 3: gcloud
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

# Homework 4: Packer
## What has been done
- Created reddit-base image
- Started instance from reddit-base image
- Created reddit-full image based on reddit-base
- Started instance from reddit-full image
- Checked that instance is running reddit app

# Homework 5: terraform-1
## What has been done
- input variable for private key
- zone variable with default value
- formatted with ```terraform fmt``` (not really, VSCode did this automatically)
- created ```terraform.tfvars.example```
- (*) added resource ```google_compute_project_metadata``` for adding appuser1 key to the project
- (*) changed resource ```google_compute_project_metadata``` for adding appuser1, appuser2 and appuser3 keys to the project
- (*) added appuser_web key via web interface
- (*) run ```terraform apply```, appuser_web disappeared from project keys
- (**) created ```lb.tf```, applied and checked that application is accessible by load balancer IP address
- (**) added lb_external_ip to output
- (**) added reddit-app-tf-2 to main.tf, checked availability via loadbalancer - OK  
The main issue I see here is a lot of redundand configuration, while reddit-app-tf-2 is a twin of reddit-app-tf-1.
- (**) deleted reddit-app-tf-2 and added instance_count variable instead
- (**) ran ```terraform apply``` with ```instance_count = 3```
- (**) changed output ```app_external_ip``` to print all external application IPs
## How to run project

## How to check
