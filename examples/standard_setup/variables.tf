# Keypair variables
variable "key_name" {
  description = "The name of the aws key pair"
  type        = string
}

variable "pub_key_file_content" {
  description = "The public key file for the aws key pair"
  type        = string
}

# Module variables
variable "single_instance_type" {
  description = "The instance type of the single aws instance"
  type        = string
}

variable "vpc_cidr" {
  description = "The cidr block range of IP addresses for the virtual private cloud"
  type        = string
  default     = "192.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The cidr block range of IP addresses for the subnet"
  type        = string
  default     = "192.0.0.0/24"
}

variable "aws_availability_zone" {
  description = "The availability zone within the provider region the resources will be running, e.g. eu-west-1a and ap-southeast-1b"
  type        = string
}

variable "additional_cidrs" {
  description = "List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32"
  type        = list(any)
  default     = ["127.0.0.1/32"]
}

# General variables
variable "aws_region" {
  description = "AWS region to use"
  type        = string
}

variable "project_tag" {
  description = "The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources"
  type        = string
}

variable "owner_tag" {
  description = "Owner tag applied to all resources"
  type        = string
}

variable "environment_tag" {
  description = "Environment tag applied to all resources"
  type        = string
  default     = "DEV"
}
