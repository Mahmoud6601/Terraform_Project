# Variables for EC2 Instances
variable "instance_type_ec2" {
  description = "The type of EC2 instance"
  type        = string
}

variable "key_name_ec2" {
  description = "The key name for the EC2 instance"
  type        = string
}

variable "subnet_id_ec2" {
  description = "The ID of the subnet for the EC2 instance"
  type        = string
}

# Variables for Security Group
variable "name_sg" {
  description = "Name of the security group"
  type        = string
}

variable "vpc_id_sg" {
  description = "VPC ID for the security group"
  type        = string
}

variable "ingress_cidr_blocks_sg" {
  description = "List of CIDR blocks for inbound rules"
  type        = list(string)
}

variable "ingress_rules_sg" {
  description = "List of inbound security group rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules_sg" {
  description = "List of outbound security group rules"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

# Variables for S3 Bucket
variable "bucket_s3" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl_s3" {
  description = "ACL policy for the bucket"
  type        = string
}

# Variables for VPC
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs_vpc" {
  description = "List of availability zones"
  type        = list(string)
}

variable "private_subnet" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnet" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string
}
