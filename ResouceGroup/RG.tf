terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}

resource "azurerm_resource_group" "demo_test" {
  name     = "demo_test"
  location = "eastus"
}