output "single_private_ip" {
  description = "Private ip of the instance"
  value       = module.aws_basic_infra.single_private_ip
}

output "aws_vpc_id" {
  description = "AWS VPC ID"
  value       = module.aws_basic_infra.aws_vpc_id
}
