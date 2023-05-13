<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.38.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_server"></a> [server](#module\_server) | ../../terraform/modules/server | n/a |
| <a name="module_volume"></a> [volume](#module\_volume) | ../../terraform/modules/volume | n/a |

## Resources

| Name | Type |
|------|------|
| [null_resource.public_ip](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backups"></a> [backups](#input\_backups) | Whether to enable backups on the instance | `bool` | `false` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | The datacenter to start the instance in | `string` | `"fsn1-dc14"` | no |
| <a name="input_description"></a> [description](#input\_description) | The description to set on the instance | `string` | `""` | no |
| <a name="input_existing_firewall_name"></a> [existing\_firewall\_name](#input\_existing\_firewall\_name) | The existing firewall to attach to the instance | `string` | `""` | no |
| <a name="input_existing_ssh_key"></a> [existing\_ssh\_key](#input\_existing\_ssh\_key) | The existing ssh key to add to the instance | `string` | `""` | no |
| <a name="input_firewall_name"></a> [firewall\_name](#input\_firewall\_name) | n/a | `string` | `"firewall-1"` | no |
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | The firewall rules to add to the instance | <pre>list(object({<br>        protocol     = string<br>        port         = number<br>        source_ips   = list(string)<br>        direction    = string<br>    }))</pre> | `[]` | no |
| <a name="input_firewalls"></a> [firewalls](#input\_firewalls) | The firewalls to attach to the instance | `list(string)` | `[]` | no |
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | n/a | `any` | n/a | yes |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | The hostname to set on the instance | `string` | `""` | no |
| <a name="input_image"></a> [image](#input\_image) | The image to start | `string` | `"debian11"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | The type of instance to start | `string` | `"cx11"` | no |
| <a name="input_ipv4_enabled"></a> [ipv4\_enabled](#input\_ipv4\_enabled) | Whether to enable ipv4 on the instance | `bool` | `true` | no |
| <a name="input_ipv6_enabled"></a> [ipv6\_enabled](#input\_ipv6\_enabled) | Whether to enable ipv6 on the instance | `bool` | `true` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | The labels to add to the instance | `map(string)` | `{}` | no |
| <a name="input_location"></a> [location](#input\_location) | The location to start the instance in | `string` | `"fsn1"` | no |
| <a name="input_networks"></a> [networks](#input\_networks) | The networks to attach to the instance | `list(string)` | `[]` | no |
| <a name="input_ssh_key_name"></a> [ssh\_key\_name](#input\_ssh\_key\_name) | The name of the ssh key to add to the instance | `string` | `""` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | The ssh key to add to the instance | `string` | `""` | no |
| <a name="input_static_ipv4"></a> [static\_ipv4](#input\_static\_ipv4) | The static ipv4 to assign to the instance | `bool` | `false` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | The user data to add to the instance | `string` | `""` | no |
| <a name="input_volume_format"></a> [volume\_format](#input\_volume\_format) | Format of the volume | `string` | `"ext4"` | no |
| <a name="input_volume_name"></a> [volume\_name](#input\_volume\_name) | Name of the volume | `string` | `"volume1"` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | Size of the volume | `string` | `"10"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_selected_ssh_key_fingerprint"></a> [selected\_ssh\_key\_fingerprint](#output\_selected\_ssh\_key\_fingerprint) | n/a |
| <a name="output_ssh_key_name"></a> [ssh\_key\_name](#output\_ssh\_key\_name) | n/a |
<!-- END_TF_DOCS -->