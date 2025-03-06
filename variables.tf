variable "automation_account_name" {
  type        = string
  description = "Specifies the name of the Automation Account. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which the Automation Account is created. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "sku_name" {
  type        = string
  description = "The SKU of the account. Possible values are Basic and Free."
  default     = "Basic"
}

variable "local_authentication_enabled" {
  type        = bool
  description = "Whether requests using non-AAD authentication are blocked. Defaults to true."
  default     = true
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether public network access is allowed for the automation account. Defaults to true."
  default     = false
}

variable "encryption_key_vault_key_id" {
  type        = string
  description = "The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account."
}

variable "encryption_user_assigned_identity_id" {
  type        = string
  description = " The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = null
}

variable "identity_type" {
  type        = string
  description = "The type of identity used for this Automation Account. Possible values are SystemAssigned, UserAssigned and SystemAssigned, UserAssigned."

}

variable "identity_ids" {
  type        = list(string)
  description = <<-EOT
                The ID of the User Assigned Identity which should be assigned to this Automation Account.
                
                **NOTE:** identity_ids is required when type is set to UserAssigned or SystemAssigned, UserAssigned.
                EOT
  default     = null
}
