variable "project_name" {
}

variable "environment" {
}

variable "sg_name" {
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "common_tags" {
  default = {}
}

variable "sg_tags" {
  default = {}
}