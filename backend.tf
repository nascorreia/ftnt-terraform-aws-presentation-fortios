terraform {
  backend "s3" {
    bucket         = "ftnt-ncorreia-state-bucket"
    dynamodb_table = "terraform-state-lock-dynamodb"
    key            = "fortios-state/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "fortinet"
  }
}