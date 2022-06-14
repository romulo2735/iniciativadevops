terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = ""
}

resource "digitalocean_kubernetes_cluster" "k8s_iniciativa" {
  name   = "k8s_iniciativa"
  region = "nyc1"
  version = "1.22.8-do.1"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3    
  }
}

resource "digitalocean_kubernetes_node_pool" "node_premium" {
  cluster_id = digitalocean_kubernetes_cluster.foo.id

  name       = "premium"
  size       = "s-2vcpu-8gb"
  node_count = 2 
}