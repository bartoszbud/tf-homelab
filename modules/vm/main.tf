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
  pm_api_token_id = "terraform@pam!terraform"
  pm_api_token_secret = "3960fcd5-75ef-4303-afbf-608efbd47d5f"
  pm_tls_insecure = true
}
//*/

resource "proxmox_vm_qemu" "vm" {
  for_each = var.vm_instances
  target_node = "${var.vm_instances[each.key].target_node}"
  name = "${var.vm_instances[each.key].hostname}"
  onboot = true
  
}