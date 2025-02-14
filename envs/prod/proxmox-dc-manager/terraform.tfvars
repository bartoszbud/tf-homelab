pdm_instances = {
  "pdm1" = {
    target_node = "pve2"
    hostname    = "dc-mgmt"
    ostemplate  = "local:vztmpl/debian-12-standard_12.7-1_amd64.tar.zst"
    password    = "password"
    lxc_cores   = 1
    lxc_memory  = 512
    nameservers = "10.0.0.4, 10.0.0.5"
    lxc_ip      = "10.0.0.99"
    gw          = "10.0.0.1"
  }
}