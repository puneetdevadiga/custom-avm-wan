<!-- BEGIN_TF_DOCS -->
> [!IMPORTANT]
> This script utilizes the Azure Verified Modules (AVM) and can be leveraged for all types of environments (development, testing, production, etc.). The input parameters provided in this repository are examples. While using this repository one should carefully review their environment specific requirements and adjust the parameters accordingly.

> [!IMPORTANT]
> The author assumes no responsibility for any breaking changes that may occur. Any feedback or issues related to the AVM should be reported to the respective module's GitHub repository.


# Azure Virtual WAN with Virutal Hub Networking using Azure Verified Modules

This module is designed to simplify the creation of virtual wan based networks in Azure.

## Components deployed

- Virtual WAN
- Virtual Hub [secureHub][multiple : dev,prod,sbx,etc.]
- Routing Intent [multiple : dev,prod,sbx,etc.]
- Azure Firewall [multiple : dev,prod,sbx,etc.]
- Azure Firewall Policy
- Azure Firewall Rule Collection
- Mapping Azure Firewall Policy to Azure Firewall 

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_allow_branch_to_branch_traffic"></a> [allow\_branch\_to\_branch\_traffic](#input\_allow\_branch\_to\_branch\_traffic)

Description: Switch to flip VWAN branch to branch traffic

Type: `bool`

### <a name="input_location"></a> [location](#input\_location)

Description: Virtual WAN location

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: Virtual WAN Resource group name

Type: `string`

### <a name="input_virtual_wan_name"></a> [virtual\_wan\_name](#input\_virtual\_wan\_name)

Description: Virtual WAN name

Type: `string`
