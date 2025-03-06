

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.28.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_automation_account.automation_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account) | resource |



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automation_account_name"></a> [automation\_account\_name](#input\_automation\_account\_name) | Specifies the name of the Automation Account. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_encryption_key_vault_key_id"></a> [encryption\_key\_vault\_key\_id](#input\_encryption\_key\_vault\_key\_id) | The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account. | `string` | n/a | yes |
| <a name="input_encryption_user_assigned_identity_id"></a> [encryption\_user\_assigned\_identity\_id](#input\_encryption\_user\_assigned\_identity\_id) | The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption. | `string` | `null` | no |
| <a name="input_identity_ids"></a> [identity\_ids](#input\_identity\_ids) | The ID of the User Assigned Identity which should be assigned to this Automation Account.<br>            <br>**NOTE:** identity\_ids is required when type is set to UserAssigned or SystemAssigned, UserAssigned. | `list(string)` | `null` | no |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | The type of identity used for this Automation Account. Possible values are SystemAssigned, UserAssigned and SystemAssigned, UserAssigned. | `string` | n/a | yes |
| <a name="input_local_authentication_enabled"></a> [local\_authentication\_enabled](#input\_local\_authentication\_enabled) | Whether requests using non-AAD authentication are blocked. Defaults to true. | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_public_network_access_enabled"></a> [public\_network\_access\_enabled](#input\_public\_network\_access\_enabled) | Whether public network access is allowed for the automation account. Defaults to true. | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU of the account. Possible values are Basic and Free. | `string` | `"Basic"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_automation_account_id"></a> [automation\_account\_id](#output\_automation\_account\_id) | The ID of the Automation Account. |
| <a name="output_automation_account_name"></a> [automation\_account\_name](#output\_automation\_account\_name) | The name of the automation account |
| <a name="output_dsc_primary_access_key"></a> [dsc\_primary\_access\_key](#output\_dsc\_primary\_access\_key) | The Primary Access Key for the DSC Endpoint associated with this Automation Account. |
| <a name="output_dsc_secondary_access_key"></a> [dsc\_secondary\_access\_key](#output\_dsc\_secondary\_access\_key) | The Secondary Access Key for the DSC Endpoint associated with this Automation Account. |
| <a name="output_dsc_server_endpoint"></a> [dsc\_server\_endpoint](#output\_dsc\_server\_endpoint) | The DSC Server Endpoint associated with this Automation Account. |
| <a name="output_hybrid_service_url"></a> [hybrid\_service\_url](#output\_hybrid\_service\_url) | The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account. |
| <a name="output_identity_principal_id"></a> [identity\_principal\_id](#output\_identity\_principal\_id) | The Principal ID associated with this Managed Service Identity. |
| <a name="output_identity_tenant_id"></a> [identity\_tenant\_id](#output\_identity\_tenant\_id) | The Tenant ID associated with this Managed Service Identity. |
