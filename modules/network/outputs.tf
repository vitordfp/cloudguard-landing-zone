output "aws_vpc_id" {
    description = "The ID of the AWS VPC"
    value = aws_vpc.main.id
}

output "azure_vnet_id" {
    description = "The ID of the Azure VNet"
    value = azurerm_virtual_network.main.id
}