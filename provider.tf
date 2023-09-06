terraform {
  required_providers {
    fortios = {
      source = "fortinetdev/fortios"
    }
  }
}

provider "fortios" {
  hostname = "${data.terraform_remote_state.fgt.outputs.public_ip}:8443"
  token    = var.token
  insecure = "true"
}