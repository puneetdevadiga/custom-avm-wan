> [!IMPORTANT]
> This script utilizes the Azure Verified Modules (AVM) and can be leveraged for all types of environments (development, testing, production, etc.). The input parameters provided in this repository are examples. While using this repository one should carefully review their environment specific requirements and adjust the parameters accordingly.

> [!IMPORTANT]
> The author assumes no responsibility for any breaking changes that may occur. Any feedback or issues related to the AVM should be reported to the respective module's GitHub repository.


# Firewall Policy and rule collections using Azure Verified Modules

This module is designed to create firewall policies and rule collection to be associated with an Azure Firewall in Azure.

## Components deployed

- Firewall Policy
- Rule Collection for Network
- Rule Collection for Application

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_location"></a> [location](#input\_location)

Description: (Required) The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.

Type: `string`

### <a name="input_name"></a> [name](#input\_name)

Description: (Required) The name which should be used for this Firewall Policy. Changing this forces a new Firewall Policy to be created.

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: (Required) The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created.

Type: `string`

<!-- markdownlint-disable-next-line MD041 -->
