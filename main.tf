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

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

data "azurerm_resource_group" "myresourcegroup" {
  name = "justint-workshop"
}

data "azurerm_subnet" "subnet" {
  most_recent = true
  filter {
    name   = "name"
    values = ["justint-*"]
}

