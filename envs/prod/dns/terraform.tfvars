dns_instances = {
  "dns1" = {
    target_node = "pve1"
    hostname    = "p-dns1"
    ostemplate  = "local:vztmpl/debian-10-standard_10.6-1_amd64.tar.gz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "1.1.1.1, 8.8.8.8"
    lxc_ip      = "10.0.0.112"
  }
  "dns2" = {
    target_node = "pve1"
    hostname    = "p-dns2"
    ostemplate  = "local:vztmpl/debian-10-standard_10.6-1_amd64.tar.gz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "1.1.1.1, 8.8.8.8"
    lxc_ip      = "10.0.0.115"
  }
}