variable "dns_instances" {
  description = "Map of DNS instances to create"
  type        = map(object({
    target_node = string
    hostname    = string
    ostemplate  = string
    password    = string
    lxc_cores   = number
    lxc_memory  = number
    lxc_ip      = string
  }))
}