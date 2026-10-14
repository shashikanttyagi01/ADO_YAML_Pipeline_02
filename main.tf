terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

    backend "azurerm" {
    resource_group_name  = "ADO-RG"
    storage_account_name = "adoyamlstorage1"
    container_name       = "yamladopipelinecont"
    key                  = "yaml_pipeline.tfstate"
    use_azuread_auth=true
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "RG-YAML03"
  location = "Central India"
}
