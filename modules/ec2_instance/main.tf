resource "aws_instance" "this" {
  count         = length(var.names)
  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring    = var.monitoring

  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id

  tags = {
    Name = "instance-${var.names[count.index]}"
    Terraform   = "true"
    Environment = "dev"
  }
}

