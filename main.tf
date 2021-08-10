terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.40.0"
    }
  }
}

resource "aws_instance" "single_instance" {
  ami                    = var.single_instance_ami
  instance_type          = var.single_instance_type
  subnet_id              = module.aws_basic_network.aws_subnet_id
  vpc_security_group_ids = [module.aws_basic_network.aws_sg_id]
  key_name               = var.single_instance_key_name

  tags = {
    Name        = "${var.prefix_tag}_AWS_INSTANCE"
    Owner       = var.owner_tag
    Environment = var.environment_tag
    ManagedBy   = "Terraform"
  }
}

module "aws_basic_network" {
  source = "git::https://bitbucket.org/ecs-group/aws_basic_network.git"

  aws_core_vpc_cidr       = var.vpc_cidr
  aws_core_subnet_cidr1   = var.subnet_cidr
  aws_core_az_1           = var.aws_availability_zone
  additional_public_cidrs = var.additional_cidrs
  map_public_ip           = var.has_public_ip

  owner_tag       = var.owner_tag
  environment_tag = var.environment_tag
  prefix_tag      = var.prefix_tag
}
