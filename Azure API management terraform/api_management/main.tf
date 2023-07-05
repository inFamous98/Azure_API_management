resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_api_management" "api_management" {
  for_each            = var.api_management_instances
  name                = each.key
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = each.value.publisher_name
  publisher_email     = each.value.publisher_email

  sku_name   = each.value.sku_name

  identity {
    type = "SystemAssigned"
  }
}
