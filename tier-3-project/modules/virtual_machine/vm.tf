resource "azurerm_network_interface" "nic" {
  name = var.var_nic_name
  location = var.var_vm_location
    resource_group_name = var.var_vm_rg
  ip_configuration {
    name="internal"
    subnet_id = var.var_subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = var.var_public_ip_id
    }
}

resource "azurerm_linux_virtual_machine" "this" {
  name = var.var_vm_name
  resource_group_name = var.var_vm_rg
  location =var.var_vm_location
  size = var.var_vm_size
  admin_username = var.var_admin_username
  network_interface_ids =[azurerm_network_interface.nic.id]
  priority = "Spot"
  eviction_policy = "Deallocate"
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  admin_ssh_key {
    public_key = var.var_admin_ssh_key
    username = var.var_admin_username
    }

    source_image_reference {
      publisher = "Canonical"
      offer = "0001-com-ubuntu-server-jammy"
      sku = "22_04-lts-gen2"
      version = "latest"
    }
}