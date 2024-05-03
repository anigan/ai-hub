resource "azurerm_service_plan" "service_plan" {
  name                = "${var.logic_app_name}-asp"
  location            = var.location
  resource_group_name = var.resource_group_name

  # maximum_elastic_worker_count = 20
  os_type                  = "Windows"
  per_site_scaling_enabled = false
  sku_name                 = var.logic_app_sku
  worker_count             = 1     # Update to '3' for production
  zone_balancing_enabled   = false # Update to 'true' for production
}
