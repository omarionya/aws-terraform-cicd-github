terraform {
    required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "your-bucket-name"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "your-dynamodb-table-name"
    encrypt        = true
  }
}
