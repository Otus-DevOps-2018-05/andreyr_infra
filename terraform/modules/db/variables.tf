variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}

variable "zone" {
  description = "Zone"
  default     = "europe-north1-c"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable "network" {
  description = "Network"
  default     = "default"
}

variable "instance_count" {
  default = "1"
}
