variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Path to the private key used for ssh access"
  default     = "~/.ssh/appuser"
}

variable "zone" {
  description = "Zone"
  default     = "europe-north1-c"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable "network" {
  description = "Network"
  default     = "default"
}

variable "instance_count" {
  default = "1"
}

variable "main_mongo_address" {
  description = "Mongo1 address"
  default     = "127.0.0.1"
}
