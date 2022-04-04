output "single_public_ip" {
  description = "Public ip of the instance"
  value       = module.aws_basic_infra.single_public_ip
}

output "aws_vpc_id" {
  description = "AWS VPC ID"
  value       = module.aws_basic_infra.aws_vpc_id
}
