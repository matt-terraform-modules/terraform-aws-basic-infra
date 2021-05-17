# standard_setup
Configuration for a standard setup of an AWS network


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.40.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_basic_network"></a> [aws\_basic\_network](#module\_aws\_basic\_network) | ../../ |  |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_public_cidrs"></a> [additional\_public\_cidrs](#input\_additional\_public\_cidrs) | List of additional cidrs that need to be added to ingress rules. In format 1.2.3.4/32 | `list(any)` | n/a | yes |
| <a name="input_aws_core_az_1"></a> [aws\_core\_az\_1](#input\_aws\_core\_az\_1) | Availability zone for first subnet of AWS core network | `string` | n/a | yes |
| <a name="input_aws_core_subnet_cidr1"></a> [aws\_core\_subnet\_cidr1](#input\_aws\_core\_subnet\_cidr1) | CIDR block for first subnet of AWS Core network | `string` | n/a | yes |
| <a name="input_aws_core_vpc_cidr"></a> [aws\_core\_vpc\_cidr](#input\_aws\_core\_vpc\_cidr) | VPC CIDR block for the AWS Core VPC | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in AWS where resources will be created | `string` | n/a | yes |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | Value that will be tagged as ENVIRONMENT, on all AWS resources | `string` | n/a | yes |
| <a name="input_owner_tag"></a> [owner\_tag](#input\_owner\_tag) | Value that will be tagged as OWNER, on all AWS resources | `string` | n/a | yes |
| <a name="input_prefix_tag"></a> [prefix\_tag](#input\_prefix\_tag) | Prefix string added to Name tag | `string` | n/a | yes |

## Outputs

No outputs.
