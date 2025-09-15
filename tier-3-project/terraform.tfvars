var_rg_location                = "East US 2"
var_rg_name                    = "rg-test-asb"
var_vnet_name                  = "vnet-test-asb"
var_vnet_address_space         = ["10.0.0.0/16"]
var_vnet_subnet_name           = {
    websubnet ={
        name ="websubnet"
        ip ="10.0.0.0/24"
    }
    appsubnet ={
        name ="appsubnet"
        ip ="10.0.1.0/24"
    }
    dbsubnet ={
        name ="dbsubnet"
        ip ="10.0.2.0/24"
    }
}
var_vnet_subnet_need           = true
var_public_ip_name             = "web-pip-asb"
var_vm_name                    = "web-vm-asb"
var_vm_adminuser_name          = "azureuser"
var_nic_name                   = "web-nic-asb"
var_nsg_name                   = "nsg-test-asb"
var_vm_subnet_name ="websubnet"
