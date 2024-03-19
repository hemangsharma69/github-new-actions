terraform {
  backend "azurerm" {
    resource_group_name  = "hemangrg"
    storage_account_name = "terraformtfstate04"
    container_name       = "terraformtfstate"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
