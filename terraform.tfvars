# Values for EC2 Instances
instance_type_ec2 = "t2.micro"
key_name_ec2      = "my-key-name"
subnet_id_ec2     = "subnet-0123456789abcdef0"

# Values for Security Group
name_sg                = "my-security-group"
vpc_id_sg              = "vpc-0123456789abcdef0"
ingress_cidr_blocks_sg = ["0.0.0.0/0"]
ingress_rules_sg       = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
egress_rules_sg = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

# Values for S3 Bucket
bucket_s3 = "my-s3-bucket"
acl_s3    = "private"

# Values for VPC
cidr_vpc          = "10.0.0.0/16"
azs_vpc           = ["us-west-1a", "us-west-1b"]
private_subnet    = ["10.0.1.0/24"]
public_subnet     = ["10.0.2.0/24"]
vpc_id            = "vpc-0123456789abcdef0"
public_subnet_id  = "subnet-0123456789abcdef0"
