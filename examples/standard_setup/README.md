# standard_setup

## Description

Tests configuration of an AWS infrastructure with an ec2 instance that has a public_ip mapped to it.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.64.0 |

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
| <a name="input_additional_cidrs"></a> [additional\_cidrs](#input\_additional\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | <pre>[<br>  "127.0.0.1/32"<br>]</pre> | no |
| <a name="input_aws_availability_zone"></a> [aws\_availability\_zone](#input\_aws\_availability\_zone) | The availability zone within the provider region the resources will be running, e.g. eu-west-1a and ap-southeast-1b | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS region to use | `string` | n/a | yes |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | Environment tag applied to all resources | `string` | `"DEV"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name of the aws key pair | `string` | n/a | yes |
| <a name="input_owner_tag"></a> [owner\_tag](#input\_owner\_tag) | Owner tag applied to all resources | `string` | n/a | yes |
| <a name="input_project_tag"></a> [project\_tag](#input\_project\_tag) | The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources | `string` | n/a | yes |
| <a name="input_pub_key_file_content"></a> [pub\_key\_file\_content](#input\_pub\_key\_file\_content) | The public key file for the aws key pair | `string` | n/a | yes |
| <a name="input_single_instance_type"></a> [single\_instance\_type](#input\_single\_instance\_type) | The instance type of the single aws instance | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | The cidr block range of IP addresses for the subnet | `string` | `"192.0.0.0/24"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The cidr block range of IP addresses for the virtual private cloud | `string` | `"192.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | The ID of the AWS VPC |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | The public IP of the instance |
<!-- END_TF_DOCS -->