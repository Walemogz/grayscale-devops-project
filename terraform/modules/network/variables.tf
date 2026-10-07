variable "network_name" {
  type        = string
  description = "Name of the VPC network"
}
variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR range for the subnet"
}

variable "region" {
  type        = string
  description = "GCP region for the subnet"
}