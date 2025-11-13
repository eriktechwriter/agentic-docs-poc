---
slug: trend-vision-one-create-security-group-vns-oci
title: Create network security groups for Virtual Network Sensor
---

Prepare network security groups before deploying the instance to Oracle Cloud Infrastructure to ensure properly configured rules for the data port and management port.

Before you deploy Virtual Network Sensor to Oracle Cloud Infrastructure, you need to create two network security groups for the data port and management port. Because the security settings are different between both ports, Trend Micro recommends using the steps below to create the network security groups before launching the instance.

:::warning[Important]
Your network security groups must be on the same VCN as your Virtual Network Sensor deployment. Before you begin, make sure you have chosen or created a VCN for the Virtual Network Sensor.
:::

:::note
The steps contained in these instructions are valid as of September 2025.
:::

### Procedure {#procedure}

1.  Go to [https://www.oracle.com/cloud/sign-in.html](https://www.oracle.com/cloud/sign-in.md) and sign in to Oracle Cloud Infrastructure.

2.  In the top navigation bar, select your target region for deploying the Virtual Network Sensor.

3.  Click the navigation menu icon (![](/images/OracleOCI_navigation_menu=20250922030811.webp)) on the top left and go to **Networking → Virtual cloud networks**.

4.  Click the VCN where you plan to deploy the Virtual Network Sensor.

5.  On the details page, perform one of the following actions depending on the option that you see:

    - On the **Security** tab, go to the **Network Security Groups** section.
    - Under **Resources**, select **Network Security Groups**.

6.  Create a network security group for the management port.

    1.  Click **Create Network Security Group**.

    2.  Specify a name for the network security group.

    3.  Select a compartment.

        For simplicity and ease of management, keep the network security group in the same compartment as the Virtual Network Sensor instance it protects.

    4.  Add the following rules for inbound traffic to the Virtual Network Sensor management port:

        <table>
        <thead>
        <tr>
        <th><p>Direction</p></th>
        <th><p>Source Type</p></th>
        <th><p>Source CIDR</p></th>
        <th><p>IP Protocols</p></th>
        <th><p>Source Port Range</p></th>
        <th><p>Destination Port Range</p></th>
        <th><p>Purpose</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>Ingress</p></td>
        <td><p>CIDR</p></td>
        <td><p>Specify the IP address in CIDR notation which is allowed to access the Virtual Network Sensor.</p></td>
        <td><p>SSH (TCP/22)</p></td>
        <td><p>All</p></td>
        <td><p>22</p></td>
        <td><p>For accessing the Virtual Network Sensor CLISH console</p></td>
        </tr>
        <tr>
        <td><p>Ingress</p></td>
        <td><p>CIDR</p></td>
        <td><p>Specify the IP address in CIDR notation which is allowed to access the Virtual Network Sensor.</p></td>
        <td><p>TCP</p></td>
        <td><p>All</p></td>
        <td><p>80</p></td>
        <td><p>For exporting debug logs</p></td>
        </tr>
        <tr>
        <td><p>Ingress</p></td>
        <td><p>CIDR</p></td>
        <td><p>Specify the IP address in CIDR notation of the NLB created for your Virtual Network Sensor.</p></td>
        <td><p>TCP</p></td>
        <td><p>All</p></td>
        <td><p>14789</p></td>
        <td><p>For answering NLB health check</p>
        
        :::note
        
        <p>Add this rule after you have created the NLB. For details, see <a href="trend-vision-one-configure-traffic-mirroring-oci">Configure traffic mirroring on Oracle Cloud Infrastructure</a>.</p>
        
        :::

        </td>
        </tr>
        </tbody>
        </table>

    5.  Add the following rule for outbound traffic from the Virtual Network Sensor management port:

        <table>
        <thead>
        <tr>
        <th><p>Direction</p></th>
        <th><p>Destination Type</p></th>
        <th><p>Destination</p></th>
        <th><p>IP Protocols</p></th>
        <th><p>Source Port Range</p></th>
        <th><p>Destination Port Range</p></th>
        <th><p>Purpose</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>Egress</p></td>
        <td><p>CIDR</p></td>
        <td><p>0.0.0.0/0</p></td>
        <td><p>All Protocols</p></td>
        <td><p>-</p></td>
        <td><p>-</p></td>
        <td><p>For allowing all outbound traffic</p></td>
        </tr>
        </tbody>
        </table>

    6.  Click **Create**.

        The network security group details screen is displayed.

7.  Go back to the VCN details page.

8.  Create a network security group for the Virtual Network Sensor data port.

    1.  Click **Create Network Security Group**.

    2.  Specify a name for the network security group.

    3.  Select the same compartment used by the network security group for the Virtual Network Sensor management port.

    4.  Add the following rules for inbound traffic to the Virtual Network Sensor data port:

        <table>
        <thead>
        <tr>
        <th><p>Direction</p></th>
        <th><p>Source Type</p></th>
        <th><p>Source CIDR</p></th>
        <th><p>IP Protocols</p></th>
        <th><p>Source Port Range</p></th>
        <th><p>Destination Port Range</p></th>
        <th><p>Purpose</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>Ingress</p></td>
        <td><p>CIDR</p></td>
        <td><p>0.0.0.0/0</p></td>
        <td><p>All Protocols</p></td>
        <td><p>-</p></td>
        <td><p>-</p></td>
        <td><p>For allowing all inbound traffic</p></td>
        </tr>
        </tbody>
        </table>

    5.  Add the following rule for outbound traffic from the Virtual Network Sensor data port:

        <table>
        <thead>
        <tr>
        <th><p>Direction</p></th>
        <th><p>Destination Type</p></th>
        <th><p>Destination</p></th>
        <th><p>IP Protocols</p></th>
        <th><p>Source Port Range</p></th>
        <th><p>Destination Port Range</p></th>
        <th><p>Purpose</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>Egress</p></td>
        <td><p>CIDR</p></td>
        <td><p>0.0.0.0/0</p></td>
        <td><p>All Protocols</p></td>
        <td><p>-</p></td>
        <td><p>-</p></td>
        <td><p>For allowing all outbound traffic</p></td>
        </tr>
        </tbody>
        </table>

    6.  Click **Create**.

        The network security group details screen is displayed.
