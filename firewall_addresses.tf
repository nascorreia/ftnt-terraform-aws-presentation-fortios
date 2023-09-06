resource "fortios_firewall_address" "trname" {
  allow_routing        = "disable"
  associated_interface = "port2"
  color                = 1
  name                 = "Internal"
  subnet               = "192.168.2.0 255.255.255.0"
  type                 = "ipmask"
}

//Shall we change gears again? :-)

resource "fortios_firewall_address" "address" {
  for_each = local.addresses

  name                 = each.value.name
  associated_interface = each.value.associated_interface
  color                = each.value.color
  subnet               = each.value.subnet
  type                 = each.value.type
}