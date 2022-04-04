# standard_setup
# Description
Configuration of an AWS infrastructure with an ec2 instance that has a public_ip mapped to it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.54.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_basic_infra"></a> [aws\_basic\_infra](#module\_aws\_basic\_infra) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.aws_keypair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_public_cidrs"></a> [additional\_public\_cidrs](#input\_additional\_public\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | <pre>[<br>  "127.0.0.1/32"<br>]</pre> | no |
| <a name="input_aws_core_az"></a> [aws\_core\_az](#input\_aws\_core\_az) | Availability zone for first subnet of AWS core network | `string` | n/a | yes |
| <a name="input_aws_core_subnet_cidr"></a> [aws\_core\_subnet\_cidr](#input\_aws\_core\_subnet\_cidr) | CIDR block for first subnet of AWS Core network | `string` | n/a | yes |
| <a name="input_aws_core_vpc_cidr"></a> [aws\_core\_vpc\_cidr](#input\_aws\_core\_vpc\_cidr) | VPC CIDR block for the AWS Core VPC | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to use | `string` | n/a | yes |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | Environment tag applied to all resources | `string` | `"DEV"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name of the aws key pair | `string` | n/a | yes |
| <a name="input_owner_tag"></a> [owner\_tag](#input\_owner\_tag) | Owner tag applied to all resources | `string` | n/a | yes |
| <a name="input_project_tag"></a> [project\_tag](#input\_project\_tag) | The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources | `string` | n/a | yes |
| <a name="input_pub_key_file_content"></a> [pub\_key\_file\_content](#input\_pub\_key\_file\_content) | The public key file for the aws key pair | `string` | n/a | yes |
| <a name="input_single_instance_type"></a> [single\_instance\_type](#input\_single\_instance\_type) | The instance type of the single aws instance | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | AWS VPC ID |
| <a name="output_single_public_ip"></a> [single\_public\_ip](#output\_single\_public\_ip) | Public ip of the instance |
