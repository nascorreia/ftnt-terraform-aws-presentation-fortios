resource "fortios_firewall_policy" "rule1" {
  action            = "accept"
  anti_replay       = "enable"
  auto_asic_offload = "enable"
  av_profile        = "wifi-default"
  inspection_mode   = "flow"
  internet_service  = "enable"
  ips_sensor        = "high_security"
  logtraffic        = "utm"
  name              = "rule1"
  policyid          = 1
  schedule          = "always"
  ssl_ssh_profile   = "certificate-inspection"
  status            = "enable"
  utm_status        = "enable"
  nat               = "enable"

  dstintf {
    name = "port1"
  }

  internet_service_name {
    name = "Amazon-AWS"
  }

  internet_service_name {
    name = "GitHub-GitHub"
  }

  srcaddr {
    name = fortios_firewall_address.address["host1"].name
  }
  srcaddr {
    name = fortios_firewall_address.address["host2"].name
  }
  srcaddr {
    name = fortios_firewall_address.address["host3"].name
  }

  srcintf {
    name = "port2"
  }
}