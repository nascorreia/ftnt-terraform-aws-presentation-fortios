locals {
  addresses = {
    "host1" = {
      name                 = "host1"
      associated_interface = "port2"
      color                = 2
      subnet               = "192.168.2.10 255.255.255.255"
      type                 = "ipmask"
    },
    "host2" = {
      name                 = "host2"
      associated_interface = "port2"
      color                = 4
      subnet               = "192.168.2.11 255.255.255.255"
      type                 = "ipmask"
    },
    "host3" = {
      name                 = "host3"
      associated_interface = "port2"
      color                = 5
      subnet               = "192.168.2.20 255.255.255.255"
      type                 = "ipmask"
    }
  }
}
