resource "proxmox_lxc" "lxc" {
  for_each = var.lxc_instances
  target_node  = "${var.target_node}"
  hostname     = "${var.hostname}"
  ostemplate   = "${var.ostemplate}"
  password     = "${var.password}"
  unprivileged = true
  onboot       = true
  start        = true

  cores        = "${var.lxc_cores}"
  memory       = "${var.lxc_memory}"

  nameserver   = "${join(",", var.nameservers)}"

  // Terraform will crash without rootfs defined
  rootfs {
    storage = "local-zfs"
    size    = "8G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "${var.lxc_ip}"
  }
}