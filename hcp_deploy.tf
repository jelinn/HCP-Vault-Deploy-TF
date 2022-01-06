resource "hcp_hvn" "jl_hvn" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.region
}

resource "hcp_vault_cluster" "hcp_vault" {
  hvn_id     = hcp_hvn.jl_hvn.hvn_id
  cluster_id = var.cluster_id
  tier       = var.vault_tier
  public_endpoint = true
}

resource "hcp_consul_cluster" "hcp_consul" {
  hvn_id          = hcp_hvn.jl_hvn.hvn_id
  cluster_id      = var.cluster_id
  tier            = var.consul_tier
  public_endpoint = true
}