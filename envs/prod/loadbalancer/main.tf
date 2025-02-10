//provider "proxmox" {}

module "lb" {
  source = "../../../modules/lxc"
  lxc_instances = var.lb_instances
}