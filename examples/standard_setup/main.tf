terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.40.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "aws_basic_network" {
  source = "../../"

  aws_core_vpc_cidr                 = var.aws_core_vpc_cidr
  aws_core_subnet_cidr1             = var.aws_core_subnet_cidr1
  aws_core_az_1                     = var.aws_core_az_1
  additional_public_cidrs           = var.additional_public_cidrs
  map_public_ip                     = true
  aws_core_vpc_enable_dns_hostnames = true

  owner_tag       = var.owner_tag
  environment_tag = var.environment_tag
  prefix_tag      = var.prefix_tag

}