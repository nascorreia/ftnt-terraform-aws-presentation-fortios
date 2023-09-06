data "terraform_remote_state" "fgt" {
  backend = "s3"
  config = {
    bucket  = "ftnt-ncorreia-state-bucket"
    key     = "infra-state/terraform.tfstate"
    region  = "eu-west-1"
    profile = "fortinet"
  }
}