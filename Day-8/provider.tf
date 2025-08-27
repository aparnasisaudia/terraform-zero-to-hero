terraform {
  required_version = ">= 1.12.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0" # lock to a major version
    }
  }
  backend "azurerm" {
   #use_oidc             = true                               
    #use_cli              = true
    use_azuread_auth     = true 
    tenant_id            = "20087f85-be07-4e50-9db8-6af7a80a9177"  
    #client_id            = "f24faf60-1c0d-4fcd-8a2d-4a3774d2e7c6"
    #client_secret        = "lop8Q~hF9d2msC~qhgt4mxNwxc7yX2_azokyTdBh" 
    storage_account_name = "aparnastore"                             
    container_name       = "statecontainer"                              
    key                  = "terraform.tfstate"               
  }
}


provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
    
  subscription_id = "638c1206-419f-4032-92dc-da660c65c3ff"
  #tenant_id       = "20087f85-be07-4e50-9db8-6af7a80a9177" 
}