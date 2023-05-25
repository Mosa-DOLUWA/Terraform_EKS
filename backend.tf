terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "mosa-terraform-up-and-running-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "mosa-terraform-up-and-running-locks"
    encrypt        = true
  }
}