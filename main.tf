
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform"
    storage_account_name = "terraform20230809sa"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

