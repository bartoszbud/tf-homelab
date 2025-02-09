variable "lb_instances" {
  description = "Map of Load Balancer instances to create"
  type        = map(object({
    target_node = string
    hostname    = string
    ostemplate  = string
    password    = string
    lxc_cores   = number
    lxc_memory  = number
    nameservers = list(string)
    lxc_ip      = string
  }))
}

variable "target_node" {
  description = "The Proxmox node to create the LXC container on"
  type        = string
}

variable "hostname" {
  description = "The hostname of the LXC container"
  type        = string
}

variable "ostemplate" {
  description = "The LXC container template to use"
  type        = string
}

variable "password" {
  description = "The password to set for the LXC container"
  type        = string
}

variable "lxc_cores" {
  description = "The number of CPU cores to assign to the LXC container"
  type        = number
}

variable "lxc_memory" {
  description = "The amount of memory to assign to the LXC container"
  type        = number
  
}

variable "lxc_ip" {
  description = "The IP address to assign to the LXC container"
  type        = string
}