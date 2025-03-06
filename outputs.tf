output "automation_account_name" {
  value       = azurerm_automation_account.automation_account.name
  description = "The name of the automation account"
}

output "automation_account_id" {
  value       = azurerm_automation_account.automation_account.id
  description = "The ID of the Automation Account."
}

output "identity_principal_id" {
  value       = azurerm_automation_account.automation_account.identity[0].principal_id
  description = "The Principal ID associated with this Managed Service Identity."
}

output "identity_tenant_id" {
  value       = azurerm_automation_account.automation_account.identity[0].tenant_id
  description = "The Tenant ID associated with this Managed Service Identity."
}

output "dsc_server_endpoint" {
  value       = azurerm_automation_account.automation_account.dsc_server_endpoint
  description = "The DSC Server Endpoint associated with this Automation Account."
}

output "dsc_primary_access_key" {
  value       = azurerm_automation_account.automation_account.dsc_primary_access_key
  description = "The Primary Access Key for the DSC Endpoint associated with this Automation Account."
  sensitive   = true
}

output "dsc_secondary_access_key" {
  value       = azurerm_automation_account.automation_account.dsc_secondary_access_key
  description = "The Secondary Access Key for the DSC Endpoint associated with this Automation Account."
  sensitive   = true
}

output "hybrid_service_url" {
  value       = azurerm_automation_account.automation_account.hybrid_service_url
  description = "The URL of automation hybrid service which is used for hybrid worker on-boarding With this Automation Account."
}
