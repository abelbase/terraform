resource "azurerm_public_ip" "name" {
  name                = var.var_public_ip_name
  location            = var.var_public_ip_location
  resource_group_name = var.var_public_ip_rg
  allocation_method   = var.var_public_ip_allocation_method
}