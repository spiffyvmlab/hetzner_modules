variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "cx11"
}
variable "image" {
  description = "The image to start"
  type        = string
  default     = "debian11"
}
variable "location" {
  description = "The location to start the instance in"
  type        = string
  default     = "fsn1"
}
variable "ipv4_enabled" {
  description = "Whether to enable ipv4 on the instance"
  type        = bool
  default     = true
}
variable "ipv6_enabled" {
  description = "Whether to enable ipv6 on the instance"
  type        = bool
  default     = true
}
variable "user_data" {
  description = "The user data to add to the instance"
  type        = string
  default     = ""
}
variable "volumes" {
  description = "The volumes to attach to the instance"
  type        = list(string)
  default     = []
}
variable "networks" {
  description = "The networks to attach to the instance"
  type        = list(string)
  default     = []
}
variable "firewalls" {
  description = "The firewalls to attach to the instance"
  type        = list(string)
  default     = []
}
variable "description" {
  description = "The description to set on the instance"
  type        = string
  default     = ""
}
variable "labels" {
  description = "The labels to add to the instance"
  type        = map(string)
  default     = {}
}
variable "datacenter" {
  description = "The datacenter to start the instance in"
  type        = string
  default     = "fsn1-dc14"
}
variable "backups" {
  description = "Whether to enable backups on the instance"
  type        = bool
  default     = false
}
variable "hostname" {
  description = "The hostname to set on the instance"
  type        = string
  default     = ""
}
variable "static_ipv4" {
    description = "The static ipv4 to assign to the instance"
    type        = bool
    default     = false
}
variable "ssh_key_name" {
    description = "The name of the ssh key to add to the instance"
    type        = string
    default     = ""
}
variable "ssh_public_key" {
    description = "The ssh key to add to the instance"
    type        = string
    default     = ""
}
variable "existing_ssh_key" {
    description = "The existing ssh key to add to the instance"
    type        = string
    default     = ""
}
variable "firewall_name" {
  description = "The name of the new firewall created"
  type        = string
  default     = ""
}
variable "firewall_rules" {
    description = "The firewall rules to add to the instance"
    type        = list(object({
        protocol     = string
        port         = number
        source_ips   = list(string)
        direction    = string
    }))
    default     = []
}
variable "existing_firewall_name" {
    description = "The existing firewall to add to the instance"
    type        = string
    default     = ""
}