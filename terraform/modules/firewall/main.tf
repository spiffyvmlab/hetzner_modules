resource "hcloud_firewall" "this" {
    name = var.firewall_name
    labels = {
        terraform = "true"
    }
    dynamic "rule" {
        for_each = { for p in var.firewall_rules : p.port => p }
        content {
            direction  = rules.value.direction
            protocol   = rules.value.protocol
            port       = rules.value.port
            source_ips = rules.value.source_ips
        }
}
}