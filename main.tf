terraform {
  required_version = ">= 1.4.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.1.0"
    }
  }
}

resource "aws_instance" "single_instance" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  subnet_id              = module.aws_core_network.aws_subnet_id
  vpc_security_group_ids = [module.aws_core_network.aws_sg_id]
  key_name               = var.instance_key_name

  tags = {
    Name = "${var.project_tag}_SINGLE_INSTANCE"
  }
}

module "aws_core_network" {
  source = "git@github.com:matt-terraform-modules/terraform-aws-core-network.git?ref=v3.0.5"

  aws_core_vpc_cidr       = var.vpc_cidr
  aws_core_subnet_cidr    = var.subnet_cidr
  aws_core_az             = var.aws_availability_zone
  additional_public_cidrs = var.additional_cidrs
  map_public_ip           = var.has_public_ip

  project_tag = var.project_tag
}
