terraform {
  backend "s3" {
    bucket  = "terraform-state-suelem"
    key     = "site/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}
