terraform {
  required_providers {
    iosxe = {
      source = "CiscoDevNet/iosxe"
      version = "0.5.5"
    }
  }
}

provider "iosxe" {
  username = "admin"
  password = "C1sco12345"
  url      = "https://devnetsandboxiosxe.cisco.com"
}

data "iosxe_interface_ethernet" "GigabitEthernet1" {
  type = "GigabitEthernet"
  name = "1"
}

output "GigabitEthernet1_ip" {
  value = data.iosxe_interface_ethernet.GigabitEthernet1.ipv4_address
}