terraform {
	backend "azurerm" {
		resource_group_name  = "daniel-huerta"
    storage_account_name = "mystorageaccountdh"
    container_name       = "mycontainerdh"
    key                  = "terraform.tfstate"
	}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}