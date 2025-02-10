rev_proxy_instances = {
  "rp1" = {
    target_node = "pve1"
    hostname    = "p-rp1"
    ostemplate  = "local:vztmpl/debian-10-standard_10.6-1_amd64.tar.gz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.8"
  }
  "rp2" = {
    target_node = "pve1"
    hostname    = "p-rp2"
    ostemplate  = "local:vztmpl/debian-10-standard_10.6-1_amd64.tar.gz"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.9"
  }
}