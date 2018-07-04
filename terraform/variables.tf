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
  default     = "~/.ssh/id_rsa"
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
