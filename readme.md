# AWS Terraform CI/CD Project

This repository contains an **enterprise-grade Terraform CI/CD project** with GitHub Actions for deploying AWS infrastructure.
It supports **two environments**: `dev` and `prod`, and provisions resources like **VPC, public subnet, EC2, S3, and security groups**.

---

## ⚡ Features

- CI/CD with GitHub Actions using **reusable workflows**
- **OIDC-based AWS credentials** (no long-lived AWS keys required)
- Separate **dev** and **prod** environments
- Terraform state stored in **S3** with **DynamoDB locking**
- Security and best practices enforced via **Trivy / TFLINT scans**

---

## 🛠 Prerequisites

- Terraform ≥ 1.3.x
- AWS account with the ability to create IAM roles, VPCs, EC2, S3, DynamoDB
- Create S3 bucket, Dynamo DB table and IAM role
- GitHub repository access with **Actions enabled**
- Input custom OIDC and role, uncomment the OIDC and apply steps to create the AWS resources

---

## ⚙ Setup Instructions

1. **Clone the repository locally**

```bash
git clone git@github.com:<your-org>/<repo>.git
cd <repo>
