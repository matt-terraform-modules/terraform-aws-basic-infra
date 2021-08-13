# terraform-aws-mod-1
# Description
Repo for testing module feature in TFC.
Tests recursive modules as well.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.40.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_basic_network"></a> [aws\_basic\_network](#module\_aws\_basic\_network) | git::https://bitbucket.org/ecs-group/aws_basic_network.git | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_instance.single_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_cidrs"></a> [additional\_cidrs](#input\_additional\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | <pre>[<br>  "212.250.145.34/32"<br>]</pre> | no |
| <a name="input_aws_availability_zone"></a> [aws\_availability\_zone](#input\_aws\_availability\_zone) | The availability zone within the provider region the resources will be running, e.g. eu-west-1a and ap-southeast-1b | `string` | n/a | yes |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | Value that will be tagged as ENVIRONMENT, on all AWS resources | `string` | n/a | yes |
| <a name="input_has_public_ip"></a> [has\_public\_ip](#input\_has\_public\_ip) | Boolean to indicate if the public subnet needs to map public IPs to it | `bool` | `false` | no |
| <a name="input_owner_tag"></a> [owner\_tag](#input\_owner\_tag) | Value that will be tagged as OWNER, on all AWS resources | `string` | n/a | yes |
| <a name="input_prefix_tag"></a> [prefix\_tag](#input\_prefix\_tag) | Prefix string added to Name tag | `string` | n/a | yes |
| <a name="input_single_instance_ami"></a> [single\_instance\_ami](#input\_single\_instance\_ami) | The ami of the single aws instance | `string` | n/a | yes |
| <a name="input_single_instance_key_name"></a> [single\_instance\_key\_name](#input\_single\_instance\_key\_name) | The key name of the single aws instance | `string` | n/a | yes |
| <a name="input_single_instance_type"></a> [single\_instance\_type](#input\_single\_instance\_type) | The instance type of the single aws instance | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | The cidr block range of IP addresses for the subnet | `string` | `"192.0.0.0/24"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The cidr block range of IP addresses for the virtual private cloud | `string` | `"192.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_sg_id"></a> [aws\_sg\_id](#output\_aws\_sg\_id) | AWS Default Security Group ID |
| <a name="output_aws_subnet_id"></a> [aws\_subnet\_id](#output\_aws\_subnet\_id) | AWS Subnet ID |
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | AWS VPC ID |
| <a name="output_single_private_ip"></a> [single\_private\_ip](#output\_single\_private\_ip) | Private ip of the instance |
| <a name="output_single_public_ip"></a> [single\_public\_ip](#output\_single\_public\_ip) | Public ip of the instance |
