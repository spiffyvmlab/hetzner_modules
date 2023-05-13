data "hcloud_ssh_key" "ssh_key" {
  name = var.existing_ssh_key
}
data "hcloud_firewall" "existing_firewall" {
    name = var.existing_firewall_name
}