variable "var_rg_location" {
  description = "location of rg"
  type        = string

}

variable "var_rg_name" {
  description = "value"
  type        = string
}

variable "var_vnet_name" {
  description = "vnet name"
  type        = string

}

variable "var_vnet_address_space" {
  description = "vnet address space"
  type        = list(string)

}

variable "var_vnet_subnet_need" {
  description = "if subnet needed then true else false"
  type        = bool
}

variable "var_public_ip_name" {
  description = "name of ip"
  type        = string

}


variable "var_vm_name" {
  description = "vm name"
  type        = string

}

variable "var_vm_adminuser_name" {
  description = "admin username"
  type        = string

}

variable "var_nic_name" {
  description = "nic name"
  type        = string
}


variable "var_nsg_name" {
  description = "nsg name"
  type        = string
}

variable "var_vnet_subnet_name"{
  description = "subnet name"
  type        = map(object({
    name = string
    ip = string
  }))
  default     = {}
}

variable "var_vm_subnet_name"{
  description = "subnet name for vm"
  type        = string
}
