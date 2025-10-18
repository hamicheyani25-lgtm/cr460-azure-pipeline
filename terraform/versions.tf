terraform {
  cloud {
    organization = "yani-org"       # <-- on va ajuster si ton org a un autre nom
    workspaces {
      name = "cr460-azure"          # <-- on ajustera si tu as choisi un autre nom
    }
  }
  required_version = "~> 1.9.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.116.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "azurerm" {
  features {}
}
