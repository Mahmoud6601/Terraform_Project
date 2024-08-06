variable "names" {
  description = "List of names for the instances"
  type        = list(string)
}

variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The key name for the EC2 instance"
  type        = string
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

