locals{
  subnet_id  = [for key in  keys(module.vnet.output_subnet_ids) : module.vnet.output_subnet_ids[key] if key == var.var_vm_subnet_name][0]
  eventhub_namespace = ["atesteve1","atesteve2"]
}

module "rg" {
  source              = "./modules/resource_group"
  resource_group_name = var.var_rg_name
  location            = var.var_rg_location

}

module "vnet" {
  source                 = "./modules/vnet"
  var_vnet_name          = "test-app-vnet-1"
  var_vnet_location      = module.rg.rg_location_output
  var_rg_name            = module.rg.rg_output
  var_vnet_address_space = var.var_vnet_address_space
  var_vnet_subnet_need   = var.var_vnet_subnet_need
  var_vnet_subnet_name   = var.var_vnet_subnet_name
  
}

module "tls" {
  source = "./modules/tls"
}

module "module_public_ip" {
  source                          = "./modules/public_ip"
  var_public_ip_name              = var.var_public_ip_name
  var_public_ip_location          = module.rg.rg_location_output
  var_public_ip_rg                = module.rg.rg_output
  var_public_ip_allocation_method = "Static"

}

module "module_vm" {
  source             = "./modules/virtual_machine"
  var_vm_name        = var.var_vm_name
  var_vm_location    = module.rg.rg_location_output
  var_vm_rg          = module.rg.rg_output
  var_vm_size        = "Standard_E2s_v3"
  var_admin_username = var.var_vm_adminuser_name
  var_admin_ssh_key  = module.tls.output_tls_public_key
  var_nic_name       = var.var_nic_name
  var_subnet_id      = local.subnet_id
  var_public_ip_id   = module.module_public_ip.output_public_ip_id
  var_subnet_name = var.var_vm_subnet_name


}



module "module_nsg" {
  source           = "./modules/nsg"
  var_nsg_name     = "nsg-test-1"
  var_nsg_location = module.rg.rg_location_output
  var_nsg_rg       = module.rg.rg_output
  var_nic_id       = module.module_vm.output_nic_id


}


resource "azurerm_eventhub_namespace" "this"{
  for_each = toset(local.eventhub_namespace)
  name= each.key
  location = module.rg.rg_location_output
  resource_group_name = module.rg.rg_output
  sku = "Basic"
  capacity = 1
}

resource "azurerm_eventhub" "this" {
  for_each = toset(local.eventhub_namespace)
  name = "aeventhub1"
  namespace_id = azurerm_eventhub_namespace.this[each.key].id
  partition_count = 1
  message_retention = 1
}

data "azurerm_eventhub_namespace" "name" {
  for_each = toset(local.eventhub_namespace)
  resource_group_name = module.rg.rg_output
  name = each.key
}

output "eventhub_namespace" {
  value = data.azurerm_eventhub_namespace.name[*].id
}