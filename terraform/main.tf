module "vpc" {
  source = "./vpc"
}

module "eks" {
  source             = "./eks"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = [module.vpc.private_subnet_id]
}
