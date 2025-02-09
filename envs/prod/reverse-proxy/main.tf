module "reverse-proxy" {
  source = "../../../modules/lxc"
  lxc_instances = var.rev_proxy_instances
}