output "output_vm_name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "output_vm_ip_address" {
  value = azurerm_linux_virtual_machine.this.public_ip_address
}

output "output_vm_username" {
  value = azurerm_linux_virtual_machine.this.admin_username
}

output "output_nic_id" {
  value = azurerm_network_interface.nic.id

}