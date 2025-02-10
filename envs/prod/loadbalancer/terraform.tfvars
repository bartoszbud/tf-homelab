lb_instances = {
  "lb1" = {
    target_node = "pve2"
    hostname    = "p-lb1"
    ostemplate  = "local:vztmpl/almalinux-9-default_20221108_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.103"
  }
  "lb2" = {
    target_node = "pve2"
    hostname    = "p-lb2"
    ostemplate  = "local:vztmpl/almalinux-9-default_20221108_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.104"
  }
}