# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: Apache-2.0

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.41.0"
    }
    tfe = {
      source = "hashicorp/tfe"
      version = "0.50.0"
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
  name                 = "justint-subnet"
  virtual_network_name = "justint-vnet"
  resource_group_name  = "justint-workshop"
}  

data "tfe_outputs" "myresourcegroup" {
  organization = "JustinTabbert-training"
  workspace = "hashicat-azure"
}


