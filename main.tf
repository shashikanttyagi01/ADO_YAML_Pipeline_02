terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

    backend "azurerm" {
    resource_group_name  = "DonotDeleteRG"
    storage_account_name = "pipelinestorageb18g98"
    container_name       = "b18g98container"
    key                  = "ADO-YAML.tfstate"
    
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "RG-YAML03"
  location = "Central India"
}
