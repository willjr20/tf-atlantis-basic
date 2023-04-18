terraform {
  # Define a required version of the terraform CLI
  required_version = ">= 1.2.8"

  # Define a required version of the azurerm provider
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.20.0"
    }
  }
}

provider "azurerm" {
  features {}
}