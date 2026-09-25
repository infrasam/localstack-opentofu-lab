variable "name" {
description = "The name of the security group."
type = string
}

variable "vpc_id" {
description = "The ID of the VPC."
type = string
}

variable "environment" {
description = "The environment where the security group is deployed."
type = string
}
