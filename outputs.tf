# Instance outputs
output "single_public_ip" {
  description = "Public ip of the instance"
  value       = aws_instance.single_instance.public_ip
}

output "single_private_ip" {
  description = "Private ip of the instance"
  value       = aws_instance.single_instance.private_ip
}

# Network outputs
output "aws_subnet_id" {
  description = "AWS Subnet ID"
  value       = module.aws_basic_network.aws_subnet_id
}

output "aws_sg_id" {
  description = "AWS Default Security Group ID"
  value       = module.aws_basic_network.aws_sg_id
}

output "aws_vpc_id" {
  description = "AWS VPC ID"
  value       = module.aws_basic_network.aws_vpc_id
}
