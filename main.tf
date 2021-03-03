# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }


backend "remote" {
   organization = "Battelle-Conkeya"
   workspaces {
     name = "learn-terraform-azure2"
   }
 }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup2"
  location = "westus2"
}
