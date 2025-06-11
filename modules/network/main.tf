provider "aws" {
    region = var.aws-region
}

provider "azurerm" {
  features {}
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "lz-vpc" }
}

resource "azurerm_resource_group" "main" {
    name = var.resource_group_name
    location = var.azure-location
}

resource "azurerm_virtual_network" "main" {
    name = "lz-vnet"
    resource_group_name = azurerm_resource_group.main.name
    address_space = ["10.1.0.0/16"]
    location = azurerm_resource_group.main.location
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
