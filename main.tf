terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5be145b3-504f-4936-90e8-9260c2e5806f"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG4"
    storage_account_name = "jenkinsstateozan"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}







