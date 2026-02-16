terraform {
  backend "s3" {
    bucket         = "enterprise-terraform-state-ruiru"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dynamo-lock-table"
    encrypt        = true
  }
}
