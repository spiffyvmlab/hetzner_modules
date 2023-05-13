variable "ssh_key_name" {
  description = "Name of the SSH keypair to use in hcloud"
  default     = "terraform"
}

variable "ssh_public_key" {
  description = "SSH public key to use"
}
