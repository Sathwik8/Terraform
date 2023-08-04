# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    #skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  }
    tenant_id = "8c1f2f92-9bb8-4d14-ac35-8af1d934d8b6"
    subscription_id = "00bdbe5d-2340-4243-b0bc-9626fbee6967"
    client_id = "eb344c7c-4c4c-453f-87bc-206ee3458254"
    client_secret = "g2j8Q~wR~KykxK1wJEUoHH~tsCSP9L_NLOJxWcUg"

}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.rgname}"
  location = "${var.rglocation}"
}

# # Create a virtual network within the resource group
# resource "azurerm_virtual_network" "Vnet" {
#   name                = "${var.vnet}"
#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   address_space       = ["10.0.0.0/20"]
# }

