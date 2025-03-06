resource "azurerm_automation_account" "automation_account" {
  name                          = var.automation_account_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku_name                      = var.sku_name
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = var.tags

  identity {
    type         = var.identity_type
    identity_ids = var.identity_ids
  }
}