module "dns" {
  source = "../../../modules/lxc"
  lxc_instances = var.pdm_instances
}