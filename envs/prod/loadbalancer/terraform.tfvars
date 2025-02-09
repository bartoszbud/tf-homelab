lb_instances = {
  "lb1" = {
    target_node = "pve1"
    hostname    = "p-lb1"
    ostemplate  = "local:vztmpl/debian-10-standard_10.6-1_amd64.tar.gz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = ["10.0.0.4", "10.0.0.5"]
    lxc_ip      = "10.0.0.6"
  }
  "lb2" = {
    target_node = "pve1"
    hostname    = "p-lb2"
    ostemplate  = "local:vztmpl/debian-10-standard_10.6-1_amd64.tar.gz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = ["10.0.0.4", "10.0.0.5"]
    lxc_ip      = "10.0.0.7"
  }
}