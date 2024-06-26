#Providers
terraform {
  required_providers {
    azurerm = {
      # Specify what version of the provider we are going to utilise
      source  = "hashicorp/azurerm"
      version = ">= 3.104.2"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.1"
    }
  }
}
# Features
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}







