terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "=3.0.0"
        }
    }
}

provider "azurerm" {
    features {}
    subscription_id = "19feeb3f-655c-455e-be5e-d82fd5d4a63b"
}

variable "location" {
    description = "Location for Azure resources"
    default = "West Europe"
}

locals {
    resource_group_name = "cattoor-rg-${terraform.workspace}-${lower(replace(var.location, " ", ""))}-01"
}