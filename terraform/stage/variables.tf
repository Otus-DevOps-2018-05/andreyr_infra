variable "project" {
  description = "Project ID"
}

variable "region" {
  description = "Region"
  default     = "europe-north1"
}

variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/appuser"
}

variable "disk_image" {
  description = "Disk image"
}

variable "zone" {
  description = "Zone"
  default     = "europe-north1-c"
}

variable "network" {
  description = "Network"
  default     = "default"
}

variable "instance_count" {
  default = "1"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable "main_mongo_address" {
  description = "Mongo address"
  default     = "127.0.0.1"
}
