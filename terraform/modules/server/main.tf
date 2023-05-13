resource "hcloud_server" "server" {
  name        = var.hostname
  image       = var.image
  server_type = var.instance_type
  firewall_ids   = var.existing_firewall_name != "" ? [data.hcloud_firewall.existing_firewall.id] : [module.firewall.this.id]
  ssh_keys    = var.existing_ssh_key != "" ? [data.hcloud_ssh_key.ssh_key.id] : [module.ssh_key.this.id]
  public_net {
    ipv4_enabled = var.ipv4_enabled
    #ipv4 = var.static_ipv4 != "" ? var.static_ipv4 : null
    ipv6_enabled = var.ipv6_enabled
  }
}

module "ssh_key" {
  for_each = toset(var.existing_ssh_key != "" ? [] : [1])
  source = "git::https://github.com/spiffyvmlab/hetzner_tf_modules.git//terraform/modules/ssh-key"
    ssh_key_name = var.ssh_key_name
    ssh_public_key = var.ssh_public_key
}

module "firewall" {
  for_each = toset(var.existing_firewall_name != "" ? [] : [1])
  source = "git::https://github.com/spiffyvmlab/hetzner_tf_modules.git//terraform/modules/firewall"
    firewall_name = var.firewall_name
    firewall_rules = var.firewall_rules
}