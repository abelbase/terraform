variable "var_vnet_name" {
  description = "vnet name"
  type        = string
  default     = "vnet_test-"
}

variable "var_vnet_location" {
  description = "vnet location"
  type        = string
  default     = "East US2"
}

variable "var_rg_name" {
  description = "vnet rg name"
  type        = string
  default     = "rg-test-"
}

variable "var_vnet_address_space" {
  description = "ip address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "var_vnet_subnet_need" {
  description = "if subnet needed then true else false"
  type        = bool
  default     = false
}
variable "var_vnet_subnet_name" {
  description = "subnet name"
  type        = map(object({
    name = string
    ip = string
  }))
  default     = {}
}

