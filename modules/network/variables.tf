variable "aws-region" {
    description = "AWS region to deploy into"
    type = string
    default = "eu-west-1"
} 

variable "azure-location" {
    description = "Azure location to deploy into"
    type = string
    default = "West Europe"
}

variable "resource_group_name" {
    description = "Azure Resource Group name for the VNet"
    type = string
    default = "rg-landing-zone-network"
}
