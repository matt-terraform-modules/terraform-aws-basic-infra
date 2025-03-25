terraform {
  required_version = ">= 1.11.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.90.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Project     = var.project_tag
      Owner       = var.owner_tag
      Environment = var.environment_tag
      ManagedBy   = "Terraform"
    }
  }
}

# Data section
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
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

# Instance section
resource "aws_key_pair" "aws_keypair" {
  key_name   = var.key_name
  public_key = var.pub_key_file_content
}

module "aws_basic_infra" {
  source = "../../"

  instance_ami      = data.aws_ami.amazon_linux.id
  instance_type     = var.single_instance_type
  instance_key_name = aws_key_pair.aws_keypair.id

  vpc_cidr              = var.vpc_cidr
  subnet_cidr           = var.subnet_cidr
  aws_availability_zone = var.aws_availability_zone
  additional_cidrs      = var.additional_cidrs
  has_public_ip         = true

  project_tag = var.project_tag
}
