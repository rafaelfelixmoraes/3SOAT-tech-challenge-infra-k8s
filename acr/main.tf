resource "azurerm_container_registry" "tech-challenge-acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.region
  sku                 = var.sku_type
  admin_enabled       = false
}

# Set a output after execution
output "acr_id" {
  value = azurerm_container_registry.tech-challenge-acr.id
}