output "output_vnet_id" {
  value = azurerm_virtual_network.this_vnet.id
}

output "output_vnet_name" {
  value = azurerm_virtual_network.this_vnet.name
}

output "output_subnet_ids" {
  value = {
    for subnet in azurerm_virtual_network.this_vnet.subnet : subnet.name => subnet.id
  }

}