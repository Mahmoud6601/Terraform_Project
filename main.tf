module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  for_each = toset(["one", "two"]) #This line tells Terraform to create an instance of the module for each item in the given set
  name = "instance-${each.key}" #In this case, it will create two EC2 instances, with the names instance-one and instance-two
 
  instance_type = var.instance_type_ec2
  key_name = var.key_name_ec2
  monitoring = true

  vpc_security_group_ids = module.Security_group.security_group_id
  subnet_id = var.subnet_id_ec2

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "Security_group" {
  source  = "terraform-aws-modules/security-group/aws"

  name        = var.name_sg
  vpc_id      = var.name_sg

  ingress_cidr_blocks = var.ingress_cidr_blocks_sg
  ingress_rules       = var.ingress_rules_sg
  egress_rules        = var.egress_rules_sg
}

module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket_s3
  acl    = var.acl_s3

  versioning = {
    enabled = true
  }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"

  cidr = var.cidr_vpc
  azs             = var.azs_vpc
  private_subnets = var.private_subnet
  public_subnets  = var.public_subnet

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

