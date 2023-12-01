output "id" {
  value = data.tfe_outputs.myresourcegroup.values.id
}

output "location" {
  value = data.azurerm_resource_group.myresourcegroup.location
}

output "tags" {
  value = data.azurerm_resource_group.myresourcegroup.tags
}

output "subnet_id" {
  value = data.azurerm_subnet.subnet.id
}
