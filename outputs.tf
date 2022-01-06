output "VAULT_ADDR" {
    value = hcp_vault_cluster.hcp_vault.vault_public_endpoint_url
}

output "CONSUL_ADDR" {
    value = hcp_consul_cluster.hcp_consul.consul_public_endpoint_url
}