# Define the local tags
locals {
  default_tags = {}
  all_tags     = merge(local.default_tags, var.az_tags)
}

# Resource Group
resource "azurerm_resource_group" "az_rg" {
  name     = var.az_rg_name
  location = var.az_rg_location

  tags = local.all_tags
}

# Resource Group
resource "azurerm_resource_group" "az_rg2" {
  name     = "test-rg2"
  location = var.az_rg_location

  tags = local.all_tags
}
