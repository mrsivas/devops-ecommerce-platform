# Terraform Configuration for DevOps E-commerce Platform

This directory contains the Terraform configuration for provisioning the infrastructure of the DevOps E-commerce Platform on AWS.

## Structure

- `main.tf`: Main Terraform configuration file that orchestrates the overall infrastructure setup.
- `eks/`: Module for provisioning Amazon EKS (Elastic Kubernetes Service) cluster, including IAM roles, node groups, and related resources.
- `vpc/`: Module for creating the Virtual Private Cloud (VPC), subnets, security groups, and networking components.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) v1.0 or later
- [AWS CLI](https://aws.amazon.com/cli/) configured with appropriate credentials
- Access to an AWS account with permissions to create VPC, EKS, and related resources

## Usage

1. Initialize Terraform:
   ```sh
   terraform init
   ```

2. Review the planned changes:
   ```sh
   terraform plan
   ```

3. Apply the configuration:
   ```sh
   terraform apply
   ```

## Modules

### EKS Module (`eks/`)

Provisions an EKS cluster with:
- IAM roles for service accounts
- Managed node groups
- VPC configuration integration

### VPC Module (`vpc/`)

Sets up the network infrastructure:
- VPC with public and private subnets
- Internet Gateway and NAT Gateways
- Security groups for EKS and other services

## Outputs

After applying, the following outputs are available:
- EKS cluster endpoint
- VPC ID and subnet IDs
- Security group IDs

Refer to the `outputs.tf` files in each module for details.

## Cleanup

To destroy the infrastructure:
```sh
terraform destroy
```

## Contributing

Ensure all changes are tested in a non-production environment before applying to production.