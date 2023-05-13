module "server" {
    source = "../../terraform/modules/server"

    instance_type = var.instance_type
    hostname = var.hostname
    existing_ssh_key = var.existing_ssh_key
    ssh_key_name = var.ssh_key_name
    ssh_public_key = var.ssh_public_key
    location = var.location
    datacenter = var.datacenter
    image = var.image
    ipv4_enabled = var.ipv4_enabled
    ipv6_enabled = var.ipv6_enabled
    static_ipv4 = var.static_ipv4

    existing_firewall_name = var.existing_firewall_name
    firewall_name = var.firewall_name
    firewall_rules = var.firewall_rules


}
module "volume" {
    source = "../../terraform/modules/volume"

    volume_name = var.volume_name
    volume_size = var.volume_size
    volume_format = var.volume_format
    server_id = module.server.server_id
    automount = "true"
}
resource "null_resource" "public_ip" {
    provisioner "local-exec" {
        command = "/bin/bash get-public-ip.sh"
    }
}