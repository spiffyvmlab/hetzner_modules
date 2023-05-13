variable "volume_name" {
  description = "Name of the volume"
  default = "volume1"
}
variable "volume_size" {
  description = "Size of the volume"
  default = "10"
}
variable "volume_format" {
  description = "Format of the volume"
  default = "ext4"
}
variable "location" {
  description = "Location of the volume"
  default = "fsn1"
}
variable "server_id" {
  description = "ID of the server to attach the volume to"
  default = ""
}
variable "automount" {
  description = "Automount the volume"
  default = "true"
}