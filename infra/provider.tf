terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.83"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-rm561541"
    storage_account_name = "statequeimadas-rm561541"
    container_name       = "tfstaterm561541"
    key                  = "monitor-queimadas.tfstaterm561541"
  }
}

provider "azurerm" {
  features {}
}
