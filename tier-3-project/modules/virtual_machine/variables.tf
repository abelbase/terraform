variable "var_vm_name" {
  description = " vm name"
  type        = string
  default     = "vm-test-"
}
variable "var_nic_name" {
  description = "nic name"
  type        = string

}
variable "var_vm_location" {
  description = "vm location"
  type        = string
  default     = "East US2"


}
variable "var_subnet_id" {
  description = "subnet id"
  type        = string

}
variable "var_vm_rg" {
  description = "vm rg name"
  type        = string
  default     = "rg-test-"

}
variable "var_vm_size" {
  description = "vm size"
  type        = string
  default     = "Standard_E2s"
}

variable "var_admin_username" {
  description = "admin username"
  type        = string
  default     = "adminuser"
}

variable "var_admin_ssh_key" {
  description = "admin ssh key"
  type        = string
}

variable "var_public_ip_id" {
  description = "public ip id"
  type        = string
}

variable "var_subnet_name"{
  description = "subnet name"
  type        = string
}
