terraform {
    required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "enterprise-terraform-state-ruiru"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamo-lock-table"
    encrypt        = true
  }
}
