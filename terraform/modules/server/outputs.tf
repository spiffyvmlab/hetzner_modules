output "server_id" {
    value = hcloud_server.server.id
}
output "ssh_key_name" {
    value = module.ssh_key.ssh_key

    depends_on = [module.ssh_key]
}
output "selected_ssh_key_fingerprint" {
    value = data.hcloud_ssh_key.ssh_key.fingerprint != null ? data.hcloud_ssh_key.ssh_key.fingerprint : module.ssh_key.ssh_key
}