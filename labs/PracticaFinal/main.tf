module "network" {
  source      = "./network"
  tags        = lookup(var.tags, terraform.workspace)
  vpc_cidr    = lookup(var.vpc_cidr, terraform.workspace)
  subnet_cidr = lookup(var.subnet_cidr, terraform.workspace)
}

module "infra" {
  source      = "./infra"
  ami = lookup(var.ami, terraform.workspace)
  instance = lookup(var.instance, terraform.workspace)
  subnet_id  = lookup(var.subnet_cidr, terraform.workspace)
  tags = lookup(var.tags, terraform.workspace)
  security_group_id = module.security_group.sg-vpc_id
}

module "security_group" {
  source = "./security"
  name   = "${terraform.workspace}-sg"
  vpc_id = module.network.vpc_id
}