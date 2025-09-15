output "vm_name_output" {
  value = module.module_vm.output_vm_name
}

output "vm_ip_address_output" {
  value = module.module_vm.output_vm_ip_address
}

output "rg_name_output" {
  value = module.rg.rg_output
}
output "rg_location_output" {
  value = module.rg.rg_location_output
}

output "subnet_id_output" {
  value = module.vnet.output_subnet_ids
}

output "output_local_file_data"{
  value = module.tls.output_local_id_rsa
  sensitive = true
}