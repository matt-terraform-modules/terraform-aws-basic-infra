# Instance variables
variable "instance_ami" {
  description = "The ami used for the aws instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type of the aws instance"
  type        = string
}

variable "instance_key_name" {
  description = "The key name used to connect to the aws instance"
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
variable "project_tag" {
  description = "The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources"
  type        = string
}