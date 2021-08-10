# Instance variables
variable "single_instance_type" {
  description = "The instance type of the single aws instance"
  type        = string
}

# Keypair variables
variable "key_name" {
  description = "The name of the aws key pair"
  type        = string
}

variable "pub_key_file" {
  description = "The public key file for the aws key pair"
  type        = string
}

# Module variables
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
  description = "Region in AWS where resources will be created"
  type        = string
}

variable "owner_tag" {
  description = "Value that will be tagged as OWNER, on all AWS resources"
  type        = string
}

variable "environment_tag" {
  description = "Value that will be tagged as ENVIRONMENT, on all AWS resources"
  type        = string
}

variable "prefix_tag" {
  description = "Prefix string added to Name tag"
  type        = string
}
