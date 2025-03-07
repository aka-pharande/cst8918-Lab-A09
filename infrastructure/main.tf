provider "azurerm" {
  features
  subscription_id  "45877b2c-82aa-41e4-8da1-8a4ebb66eaad"

}

resource "azurerm_resource_group" "rg" {name="myResourceGroup"location = "East US"}

resource "azurerm_storage_account" "storage" {
  name                     = "aakankshasa"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
