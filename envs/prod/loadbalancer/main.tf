module "dns" {
  source = "../../../modules/lxc"
  lxc_instances = var.lb_instances
}