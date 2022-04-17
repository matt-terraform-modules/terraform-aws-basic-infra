# Instance outputs
output "instance_public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.single_instance.public_ip
}

output "instance_private_ip" {
  description = "The private IP of the instance"
  value       = aws_instance.single_instance.private_ip
}

# Network outputs
output "aws_subnet_id" {
  description = "The ID of the AWS Subnet"
  value       = module.aws_basic_network.aws_subnet_id
}

output "aws_sg_id" {
  description = "The ID of the AWS Security Group"
  value       = module.aws_basic_network.aws_sg_id
}

output "aws_vpc_id" {
  description = "The ID of the AWS VPC"
  value       = module.aws_basic_network.aws_vpc_id
}
