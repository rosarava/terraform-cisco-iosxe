terraform {
  required_version = ">= 1.8.0"

  required_providers {
    iosxe = {
      source  = "CiscoDevNet/iosxe"
      version = ">= 0.5.1"
    }
  }
}

provider "iosxe" {
  username = "admin"
  password = "C1sco12345"
  url      = "devnetsandboxiosxe.cisco.com"
}

data "iosxe_interface_ethernet" "GigabitEthernet2" {
  type = "GigabitEthernet"
  name = "2"
}