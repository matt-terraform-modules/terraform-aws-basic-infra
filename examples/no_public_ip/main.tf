provider "aws" {
  region = "ap-southeast-1"
}

locals {
  owner_tag       = "Matthew_song"
  environment_tag = "DEV"
  prefix_tag      = "aws-mod-1-test-no-pub-ip"
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
  key_name   = "test_key"
  public_key = var.pub_key_file

  tags = {
    Owner       = local.owner_tag
    Environment = local.environment_tag
    ManagedBy   = "Terraform"
  }
}

module "aws_basic_infra" {
  source = "../../"

  single_instance_ami      = data.aws_ami.amazon_linux.id
  single_instance_type     = "t2.micro"
  single_instance_key_name = aws_key_pair.aws_keypair.id

  vpc_cidr              = "192.100.0.0/16"
  subnet_cidr           = "192.100.10.0/24"
  aws_availability_zone = "ap-southeast-1a"
  additional_cidrs      = ["127.0.0.1/32"]

  owner_tag       = local.owner_tag
  environment_tag = local.environment_tag
  prefix_tag      = local.prefix_tag
}