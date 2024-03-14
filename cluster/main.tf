resource "azurerm_kubernetes_cluster" "tech-challenge-k8s" {
  name                = var.cluster_name
  location            = var.region
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_name

  default_node_pool {
    name       = var.pool_name
    node_count = 1
    vm_size    = var.vm_size
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "cluster-node-pool" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.tech-challenge-k8s.id
  vm_size               = var.vm_size
  node_count            = 1
}

# Set a output after execution
output "cluster_id" {
  value = azurerm_kubernetes_cluster.tech-challenge-k8s.id
}