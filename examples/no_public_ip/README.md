# no_public_ip
Configuration of an AWS infrastructure with an ec2 instance that has no public_ip mapped to it.
It also tests the use of locals, though a single variable is still needed as it is never a good practice to push a SSH key into code repositories.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.53.0 |

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
| <a name="input_pub_key_file"></a> [pub\_key\_file](#input\_pub\_key\_file) | The public key file for the aws key pair | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | AWS VPC ID |
| <a name="output_single_private_ip"></a> [single\_private\_ip](#output\_single\_private\_ip) | Private ip of the instance |
