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
