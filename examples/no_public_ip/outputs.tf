output "instance_private_ip" {
  description = "The private IP of the instance"
  value       = module.aws_basic_infra.instance_private_ip
}

output "aws_vpc_id" {
  description = "The ID of the AWS VPC"
  value       = module.aws_basic_infra.aws_vpc_id
}
