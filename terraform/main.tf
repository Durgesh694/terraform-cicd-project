resource "azurerm_resource_group" "rg" {
    name = "devops-practice-rg"
    location = "central india"
  
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "demo-aks"
  location            = "East US"
  resource_group_name = "demo-rg"
  dns_prefix          = "demoaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}