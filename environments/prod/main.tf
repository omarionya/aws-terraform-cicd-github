variable "region" {
  default = "us-east-1"
}

module "vpc" {
  source = "../../modules/vpc"
  environment = "prod"
}

module "security" {
  source      = "../../modules/security"
  vpc_id      = module.vpc.vpc_id
  environment = "prod"
}

module "ec2" {
  source            = "../../modules/ec2"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security.security_group_id
  environment       = "prod"
}
