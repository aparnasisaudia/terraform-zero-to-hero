resource "azurerm_resource_group" "example" {
  name     = var.name
  location = var.location
}
resource "azurerm_resource_group" "example1" {
  name     = "aparna"
  location = var.location
}
resource "azurerm_storage_account" "example" {
  name                     = var.storeName
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}
resource "azurerm_storage_container" "container" {
  name                  = "statecontainer"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}