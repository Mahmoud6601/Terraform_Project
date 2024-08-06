resource "aws_security_group" "this" {
  name        = var.name
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.ingress_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = var.egress_cidr_blocks
  }

  tags = {
    Name = var.name
  }
}
