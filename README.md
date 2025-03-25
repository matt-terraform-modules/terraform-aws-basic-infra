# terraform-aws-basic-infra

## Description

This module exists to test the HashiCorp Cloud Platform Terraform module feature and how recursive modules work.

## Usage

```terraform
module terraform-aws-basic-infra {
  source = "git@github.com:matt-terraform-modules/terraform-aws-basic-infra.git?ref=v5.0.0"

# Insert the variables used here
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.11.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.90.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.90.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_core_network"></a> [aws\_core\_network](#module\_aws\_core\_network) | git@github.com:matt-terraform-modules/terraform-aws-core-network.git | v4.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_instance.single_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_cidrs"></a> [additional\_cidrs](#input\_additional\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | <pre>[<br>  "127.0.0.1/32"<br>]</pre> | no |
| <a name="input_aws_availability_zone"></a> [aws\_availability\_zone](#input\_aws\_availability\_zone) | The availability zone within the provider region the resources will be running, e.g. eu-west-1a and ap-southeast-1b | `string` | n/a | yes |
| <a name="input_has_public_ip"></a> [has\_public\_ip](#input\_has\_public\_ip) | Boolean to indicate if the public subnet needs to map public IPs to it | `bool` | `false` | no |
| <a name="input_instance_ami"></a> [instance\_ami](#input\_instance\_ami) | The ami used for the aws instance | `string` | n/a | yes |
| <a name="input_instance_key_name"></a> [instance\_key\_name](#input\_instance\_key\_name) | The key name used to connect to the aws instance | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The instance type of the aws instance | `string` | n/a | yes |
| <a name="input_project_tag"></a> [project\_tag](#input\_project\_tag) | The tag for the name/id of the project the resource is associated with. Can also be used in the name of resources | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | The cidr block range of IP addresses for the subnet | `string` | `"192.0.0.0/24"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The cidr block range of IP addresses for the virtual private cloud | `string` | `"192.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_sg_id"></a> [aws\_sg\_id](#output\_aws\_sg\_id) | The ID of the AWS Security Group |
| <a name="output_aws_subnet_id"></a> [aws\_subnet\_id](#output\_aws\_subnet\_id) | The ID of the AWS Subnet |
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | The ID of the AWS VPC |
| <a name="output_instance_private_ip"></a> [instance\_private\_ip](#output\_instance\_private\_ip) | The private IP of the instance |
| <a name="output_instance_public_ip"></a> [instance\_public\_ip](#output\_instance\_public\_ip) | The public IP of the instance |
<!-- END_TF_DOCS -->