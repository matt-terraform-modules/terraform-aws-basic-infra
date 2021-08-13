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
  public_key = var.pub_key_file_content
}

module "aws_basic_infra" {
  source = "../../"

  instance_ami      = data.aws_ami.amazon_linux.id
  instance_type     = var.single_instance_type
  instance_key_name = aws_key_pair.aws_keypair.id

  vpc_cidr              = var.aws_core_vpc_cidr
  subnet_cidr           = var.aws_core_subnet_cidr
  aws_availability_zone = var.aws_core_az
  additional_cidrs      = var.additional_public_cidrs
  has_public_ip         = true

  project_tag = var.project_tag
}