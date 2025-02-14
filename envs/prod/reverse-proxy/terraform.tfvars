rev_proxy_instances = {
  "rp1" = {
    target_node = "pve2"
    vmid        = 0
    hostname    = "tf-rp1"
    ostemplate  = "local:vztmpl/almalinux-9-cloud_20250211_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.15"
    gw          = "10.0.0.1"
  }
  "rp2" = {
    target_node = "pve2"
    vmid        = 0
    hostname    = "tf-rp2"
    ostemplate  = "local:vztmpl/almalinux-9-cloud_20250211_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.16"
    gw          = "10.0.0.1"
  }
}