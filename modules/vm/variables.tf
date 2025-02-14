variable "vm_instances" {
  description = "Map of VM instances to create"
  type        = map(object({
    target_node = string
    name        = string
    ostemplate  = string
    password    = string
    lxc_cores   = number
    lxc_memory  = number
    nameservers = string
    lxc_ip      = string
  }))
}