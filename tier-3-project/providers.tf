terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.64.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">=4.0.4"
    }
    local = {
      source  = "hashicorp/local"
      version = ">=2.4.0"
    }
  }
  backend "azurerm" {
      resource_group_name = ""
      storage_account_name = ""
      container_name = ""
      key = ""
    }
  required_version = ">= 1.3.0"
}
provider "azurerm" {
  subscription_id = ""
  features {}
}



