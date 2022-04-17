output "instance_public_ip" {
  description = "The public IP of the instance"
  value       = module.aws_basic_infra.single_public_ip
}

output "aws_vpc_id" {
  description = "The ID of the AWS VPC"
  value       = module.aws_basic_infra.aws_vpc_id
}
