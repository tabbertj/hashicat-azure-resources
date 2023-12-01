# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: Apache-2.0

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.41.0"
    }
  }
}

data "azurerm_resource_group" "myresourcegroup" {
  name = azurerm_resource_group.myresourcegroup.name
}

