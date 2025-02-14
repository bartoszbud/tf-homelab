variable "dns_instances" {
  description = "Map of DNS instances to create"
  type        = map(object({
    target_node = string
    vmid        = number
    hostname    = string
    ostemplate  = string
    password    = string
    lxc_cores   = number
    lxc_memory  = number
    nameservers = string
    lxc_ip      = string
    gw          = string
  }))
}