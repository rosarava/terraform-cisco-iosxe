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

data "iosxe_interface_ethernet" "example" {
  type = "GigabitEthernet"
  name = "1"
}