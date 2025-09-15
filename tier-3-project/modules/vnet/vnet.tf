

resource "azurerm_virtual_network" "this_vnet" {
  name                = var.var_vnet_name
  location            = var.var_vnet_location
  resource_group_name = var.var_rg_name
  address_space       = var.var_vnet_address_space

  dynamic "subnet" {
    for_each = var.var_vnet_subnet_need ? var.var_vnet_subnet_name : {}
    content {
      name             = subnet.value.name
      address_prefixes = [subnet.value.ip]
    }
  }

}