resource "aws_internet_gateway" "gw" {
  vpc_id = module.vpc.natgw_ids

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = module.vpc.vpc_cidr_block
    gateway_id = module.vpc.igw_id
  }
}

resource "aws_route_table_association" "public_rta" {
  subnet_id      = module.vpc.p
  route_table_id = aws_route_table.public_rt.id
}
