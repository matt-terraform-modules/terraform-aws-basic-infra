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

variable "aws_core_vpc_cidr" {
  description = "VPC CIDR block for the AWS Core VPC"
  type        = string
}

variable "aws_core_subnet_cidr" {
  description = "CIDR block for first subnet of AWS Core network"
  type        = string
}

variable "aws_core_az" {
  description = "Availability zone for first subnet of AWS core network"
  type        = string
}

variable "additional_public_cidrs" {
  description = "List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32"
  type        = list(any)
  default     = ["127.0.0.1/32"]
}

# General variables
variable "aws_region" {
  description = "AWS region to use."
  type        = string
}

variable "project_tag" {
  description = "Descriptor prefixed to NAME tag on all AWS resources."
  type        = string
}

variable "owner_tag" {
  description = "Owner tag added to all AWS resources."
  type        = string
}

variable "environment_tag" {
  description = "Value for ENVIRONMENT tag that is applied to all AWS instances."
  type        = string
}
