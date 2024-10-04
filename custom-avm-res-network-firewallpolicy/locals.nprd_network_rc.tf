

locals {
  nprd_network_rc = [
    {
      action   = "Deny"
      name     = "NPRDNetworkRuleCollection"
      priority = 400
      rule = [
        {
          name                  = "OutboundToInternet"
          description           = "Allow traffic outbound to the Internet"
          destination_addresses = ["0.0.0.0/0"]
          destination_ports     = ["443"]
          source_addresses      = ["10.2.0.0/24"]
          protocols             = ["TCP"]
        }
      ]
    }
  ]
}