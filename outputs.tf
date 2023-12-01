output "id" {
  value = data.azurerm_resource_group.myresourcegroup.name
}

output "location" {
  value = data.azurerm_resource_group.myresourcegroup.location
}

output "tags" {
  value = data.azurerm_resource_group.myresourcegroup.tags
}

