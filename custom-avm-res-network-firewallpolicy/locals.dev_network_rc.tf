

locals {
  dev_network_rc = [
    {
      action   = "Deny"
      name     = "DEVNetworkRuleCollection"
      priority = 400
      rule = [
        {
          name                  = "OutboundToInternet"
          description           = "Allow traffic outbound to the Internet"
          destination_addresses = ["0.0.0.0/0"]
          destination_ports     = ["443"]
          source_addresses      = ["10.1.0.0/24"]
          protocols             = ["TCP"]
        }
      ]
    }
  ]
}