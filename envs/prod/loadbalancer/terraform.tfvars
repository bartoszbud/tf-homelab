lb_instances = {
  "lb1" = {
    target_node = "pve2"
    vmid        = 0
    hostname    = "tf-lb1"
    ostemplate  = "local:vztmpl/almalinux-9-cloud_20250211_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.13"
    gw          = "10.0.0.1"
  }
  "lb2" = {
    target_node = "pve2"
    vmid        = 0
    hostname    = "tf-lb2"
    ostemplate  = "local:vztmpl/almalinux-9-cloud_20250211_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.14"
    gw          = "10.0.0.1"
  }
}