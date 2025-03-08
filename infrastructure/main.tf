terraform {
  required_version = ">= 1.0"  # You can set this to the version of Terraform you are using or the minimum version you want to support.
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"  # You can specify the version you want to use. "~> 2.0" ensures it uses any 2.x version.
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "45877b2c-82aa-41e4-8da1-8a4ebb66eaad"
}

resource "azurerm_resource_group" "rg" {
  name     = "myResourceGroup"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                     = "aakankshasa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
