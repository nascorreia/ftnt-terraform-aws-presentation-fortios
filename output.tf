output "fgt-public-ip" {
  value = data.terraform_remote_state.fgt.outputs.public_ip
}