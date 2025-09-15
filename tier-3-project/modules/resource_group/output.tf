output "rg_output" {
  value = azurerm_resource_group.this.name
}

output "rg_location_output" {
  value = azurerm_resource_group.this.location
}
