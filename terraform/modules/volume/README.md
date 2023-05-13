<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.38.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.38.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_volume.master](https://registry.terraform.io/providers/hetznercloud/hcloud/1.38.2/docs/resources/volume) | resource |
| [hcloud_volume_attachment.master](https://registry.terraform.io/providers/hetznercloud/hcloud/1.38.2/docs/resources/volume_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automount"></a> [automount](#input\_automount) | Automount the volume | `string` | `"true"` | no |
| <a name="input_location"></a> [location](#input\_location) | Location of the volume | `string` | `"fsn1"` | no |
| <a name="input_server_id"></a> [server\_id](#input\_server\_id) | ID of the server to attach the volume to | `string` | `""` | no |
| <a name="input_volume_format"></a> [volume\_format](#input\_volume\_format) | Format of the volume | `string` | `"ext4"` | no |
| <a name="input_volume_name"></a> [volume\_name](#input\_volume\_name) | Name of the volume | `string` | `"volume1"` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | Size of the volume | `string` | `"10"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->