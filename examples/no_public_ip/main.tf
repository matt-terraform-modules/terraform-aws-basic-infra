terraform {
  required_version = ">= 1.4.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Project     = local.project_tag
      Owner       = local.owner_tag
      Environment = local.environment_tag
      ManagedBy   = "Terraform"
    }
  }
}

locals {
  project_tag     = "aws-mod-1-test-no-pub-ip"
  owner_tag       = "Matthew_song"
  environment_tag = "DEV"
}

# Data section
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

# Instance section
resource "aws_key_pair" "aws_keypair" {
  key_name   = "test_key"
  public_key = var.pub_key_file_content
}

module "aws_basic_infra" {
  source = "../../"

  instance_ami      = data.aws_ami.amazon_linux.id
  instance_type     = "t2.micro"
  instance_key_name = aws_key_pair.aws_keypair.id

  vpc_cidr              = "192.100.0.0/16"
  subnet_cidr           = "192.100.10.0/24"
  aws_availability_zone = "eu-west-2a"
  additional_cidrs      = ["127.0.0.1/32"]

  project_tag = local.project_tag
}
