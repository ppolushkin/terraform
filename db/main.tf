# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.56"
    }
  }
}

provider "azurerm" {
  features {}
}
