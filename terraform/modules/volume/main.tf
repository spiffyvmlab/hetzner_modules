resource "hcloud_volume" "master" {
  name      = var.volume_name
  size      = var.volume_size
  format    = var.volume_format
  location = var.location
}

resource "hcloud_volume_attachment" "master" {
  volume_id = hcloud_volume.master.id
  server_id = var.server_id
  automount = var.server_id != "" ? var.automount : false 
}