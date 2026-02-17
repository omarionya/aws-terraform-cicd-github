terraform {
    required_version = ">= 1.5.0"

    backend "local" {
      path = "terraform.tfstate"
    }
  # backend "s3" {
  #   bucket         = "your-bucket-name"
  #   key            = "prod/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "your-dynamodb-table-name"
  #   encrypt        = true
  # }
}
