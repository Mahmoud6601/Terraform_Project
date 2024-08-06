variable "name" {
  description = "Name of the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks for inbound rules"
  type        = list(string)
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks for outbound rules"
  type        = list(string)
}
