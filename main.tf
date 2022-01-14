data "azurerm_resource_group" "rg" {
  name = "daniel_huerta"
}


resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = data.azurerm_resource_group.rg.example.name
  location            = data.azurerm_resource_group.rg.example.location
  address_space       = ["10.0.0.0/16"]
}