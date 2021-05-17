provider "aws" {
  region = "eu-west-1"
}

locals {
    owner_tag        = "Matthew_song"
    environment_tag = "DEV"
    prefix_tag        = "aws-mod-1-test-standard"
}

module "aws_basic_network" {
  source = "../../"

  aws_core_vpc_cidr                 = "192.100.0.0/16"
  aws_core_subnet_cidr1             = "192.100.10.0/24"
  aws_core_az_1                     = "eu-west-1a"
  additional_public_cidrs           = ["127.0.0.1/32"]
  aws_core_vpc_enable_dns_hostnames = true

  owner_tag       = local.owner_tag
  environment_tag = local.environment_tag
  prefix_tag      = local.prefix_tag

}