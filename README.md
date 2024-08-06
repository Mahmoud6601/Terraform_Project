# Terraform Project

This repository contains a Terraform configuration to manage AWS resources including EC2 instances, security groups, S3 buckets, and a VPC. It’s structured to help deploy and manage these resources using custom Terraform modules.

## Project Structure

```
.
├── main.tf
├── providers.tf
├── terraform.tfvars
├── variables.tf
└── modules
    ├── ec2_instance
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── security_group
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── s3_bucket
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── vpc
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

## Modules

### `ec2_instance`

This module manages AWS EC2 instances.

- **`main.tf`**: Defines the EC2 instances, including instance types, key names, monitoring settings, and subnet configuration.
- **`variables.tf`**: Defines variables for the EC2 instances, including instance type, key name, and subnet ID.
- **`outputs.tf`**: Outputs the IDs of the created EC2 instances.

### `security_group`

This module manages AWS security groups.

- **`main.tf`**: Defines the security group, including ingress and egress rules.
- **`variables.tf`**: Defines variables for the security group, including name, VPC ID, and rules.
- **`outputs.tf`**: Outputs the ID of the created security group.

### `s3_bucket`

This module manages AWS S3 buckets.

- **`main.tf`**: Defines the S3 bucket and its configuration.
- **`variables.tf`**: Defines variables for the S3 bucket, including the bucket name and ACL.
- **`outputs.tf`**: Outputs the ID of the created S3 bucket.

### `vpc`

This module manages the AWS VPC and associated subnets.

- **`main.tf`**: Defines the VPC, public and private subnets, and their configurations.
- **`variables.tf`**: Defines variables for the VPC, including CIDR block, availability zones, and subnet configurations.
- **`outputs.tf`**: Outputs the IDs of the created VPC and subnets.

## Files

### `main.tf`

The main configuration file that uses the custom modules to set up EC2 instances, security groups, S3 buckets, and a VPC. It references each module and provides the necessary input variables.

### `providers.tf`

Specifies the required providers and their versions.

**Example**:
```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"  # Specify the AWS region
}
```

### `terraform.tfvars`

This file contains the values for the variables defined in `variables.tf`. It is used to provide specific values for your Terraform configuration.

**Example**:
```hcl
instance_type_ec2 = "t2.micro"
key_name_ec2      = "my-key-name"
subnet_id_ec2     = "subnet-0123456789abcdef0"
...
```

### `variables.tf`

Defines the variables used throughout the Terraform configuration. It specifies the type and description of each variable.

**Example**:
```hcl
variable "instance_type_ec2" {
  description = "The type of EC2 instance"
  type        = string
}
...
```

## Usage

1. **Clone the Repository**:
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Initialize Terraform**:
   Initialize your Terraform working directory.
   ```sh
   terraform init
   ```

3. **Apply the Configuration**:
   Apply the Terraform configuration to create the resources.
   ```sh
   terraform apply
   ```

4. **Provide Variables**:
   - Update `terraform.tfvars` with the required values.
   - Alternatively, set environment variables or directly modify `main.tf` for testing purposes.

5. **Destroy Resources**:
   If you need to destroy the resources created by Terraform, run:
   ```sh
   terraform destroy
   ```

## Contributing

Feel free to submit issues, feature requests, or pull requests. Please ensure that your contributions adhere to the existing code style and include appropriate tests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

