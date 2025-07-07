provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "rg-tarang-0508"
  location = "East US"
}
