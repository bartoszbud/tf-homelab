///*
terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.7"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://10.0.0.2:8006/api2/json"
  pm_user = "terraform@pam"
  pm_api_token_id = "terraform@pam!terraform"
  pm_api_token_secret = "3960fcd5-75ef-4303-afbf-608efbd47d5f"
  #pm_api_token_secret = "7a627205-2999-40f7-b5dc-c74fd721640a"
  pm_tls_insecure = true
}
//*/

resource "proxmox_lxc" "lxc" {
  for_each     = var.lxc_instances
  target_node  = "${var.lxc_instances[each.key].target_node}"
  vmid         = "${var.lxc_instances[each.key].vmid}" 
  hostname     = "${var.lxc_instances[each.key].hostname}"
  ostemplate   = "${var.lxc_instances[each.key].ostemplate}"
  password     = "${var.lxc_instances[each.key].password}"
  unprivileged = true
  onboot       = true
  start        = true

  cores        = "${var.lxc_instances[each.key].lxc_cores}"
  memory       = "${var.lxc_instances[each.key].lxc_memory}"

  nameserver   = "${var.lxc_instances[each.key].nameservers}"

  ssh_public_keys = <<-EOT
    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBzcK5hil9VKh5XStAHD0y+GNiNC2FSNDbvUXFIkJnzw test
  EOT

  // Terraform will crash without rootfs defined
  rootfs {
    storage = "local-lvm"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "${var.lxc_instances[each.key].lxc_ip}/24"
    gw     = "${var.lxc_instances[each.key].gw}"
  }
}