provider "aws" {
  region = var.aws_region
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"] # Canonical

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

resource "aws_key_pair" "aws_keypair" {
  key_name   = var.key_name
  public_key = var.pub_key_file

  tags = {
    Owner       = var.owner_tag
    Environment = var.environment_tag
    ManagedBy   = "Terraform"
  }
}

module "aws_basic_infra" {
  source = "../../"

  single_instance_ami      = data.aws_ami.amazon_linux.id
  single_instance_type     = var.single_instance_type
  single_instance_key_name = aws_key_pair.aws_keypair.id

  vpc_cidr              = var.aws_core_vpc_cidr
  subnet_cidr           = var.aws_core_subnet_cidr
  aws_availability_zone = var.aws_core_az
  additional_cidrs      = var.additional_public_cidrs
  has_public_ip         = true

  owner_tag       = var.owner_tag
  environment_tag = var.environment_tag
  prefix_tag      = var.prefix_tag
}