variable "name" {
  description = "The name of the VPC."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block assigned to the VPC."
  type        = string
}

variable "environment" {
  description = "The environment where the VPC is deployed."
  type        = string
}

variable "subnet_cidr_block" {
  description = "The CIDR block assigned to the public subnet."
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet."
  type        = string
}
