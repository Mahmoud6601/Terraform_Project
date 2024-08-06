module "ec2_instance" {
  source  = "./modules/ec2_instance"

  names                = ["one", "two"]
  instance_type        = var.instance_type_ec2
  key_name             = var.key_name_ec2
  monitoring           = true
  vpc_security_group_ids = module.Security_group.security_group_id
  subnet_id            = var.subnet_id_ec2
}

module "Security_group" {
  source  = "./modules/security_group"

  name                  = var.name_sg
  vpc_id                = var.vpc_id_sg
  ingress_cidr_blocks   = var.ingress_cidr_blocks_sg
  ingress_rules         = var.ingress_rules_sg
  egress_rules          = var.egress_rules_sg
}

module "s3_bucket" {
  source  = "./modules/s3_bucket"

  bucket = var.bucket_s3
  acl    = var.acl_s3
}

module "vpc" {
  source  = "./modules/vpc"

  cidr             = var.cidr_vpc
  azs              = var.azs_vpc
  private_subnets  = var.private_subnet
  public_subnets   = var.public_subnet
}
