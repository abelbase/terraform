output "output_public_ip_id" {
  value = azurerm_public_ip.name.id
}

output "output_public_ip_name" {
  value = azurerm_public_ip.name.name
}

output "output_public_ip_address" {
  value = azurerm_public_ip.name.ip_address
}