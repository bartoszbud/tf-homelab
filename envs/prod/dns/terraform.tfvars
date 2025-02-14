dns_instances = {
  "dns1" = {
    target_node = "pve2"
    vmid        = 102
    hostname    = "tf-dns1"
    ostemplate  = "local:vztmpl/almalinux-9-cloud_20250211_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "1.1.1.1, 8.8.8.8"
    lxc_ip      = "10.0.0.4"
    gw          = "10.0.0.1"
  }
  "dns2" = {
    target_node = "pve2"
    vmid        = 103
    hostname    = "tf-dns2"
    ostemplate  = "local:vztmpl/almalinux-9-cloud_20250211_amd64.tar.xz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "1.1.1.1, 8.8.8.8"
    lxc_ip      = "10.0.0.5"
    gw          = "10.0.0.1"
  }
}