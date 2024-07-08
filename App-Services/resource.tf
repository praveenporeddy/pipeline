resource "azurerm_service_plan" "devopsmela-sp" {
  name                = var.serviceplan
  location            = azurerm_resource_group.dev_rg.location
  resource_group_name = azurerm_resource_group.dev_rg.name
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_linux_web_app" "devopsmela-webapp" {
  name                = var.webapp
  resource_group_name = azurerm_resource_group.dev_rg.name
  location            = azurerm_resource_group.dev_rg.location
  service_plan_id     = azurerm_service_plan.devopsmela-sp.id

  site_config {
    always_on = false
  }
}