# Instance variables
variable "single_instance_ami" {
  description = "The ami of the single aws instance"
  type        = string
}

variable "single_instance_type" {
  description = "The instance type of the single aws instance"
  type        = string
}

variable "single_instance_key_name" {
  description = "The key name of the single aws instance"
  type        = string
}

# Network variables
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
  default     = ["212.250.145.34/32"]
}

variable "has_public_ip" {
  description = "Boolean to indicate if the public subnet needs to map public IPs to it"
  type        = bool
  default     = false
}

# General variables
variable "environment_tag" {
  description = "Value that will be tagged as ENVIRONMENT, on all AWS resources"
  type        = string
}

variable "owner_tag" {
  description = "Value that will be tagged as OWNER, on all AWS resources"
  type        = string
}

variable "prefix_tag" {
  description = "Prefix string added to Name tag"
  type        = string
}