terraform {
  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname     = data.terraform_remote_state.fgt.outputs.public_ip
  token        = var.token
  insecure     = "true"
}