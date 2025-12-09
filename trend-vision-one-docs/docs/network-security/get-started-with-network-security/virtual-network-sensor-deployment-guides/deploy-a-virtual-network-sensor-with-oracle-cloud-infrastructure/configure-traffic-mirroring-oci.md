---
slug: trend-vision-one-configure-traffic-mirroring-oci
sidebar_position: 4
title: Configure traffic mirroring on Oracle Cloud Infrastructure
---

Set up your VCN networks to enable traffic mirroring to your Virtual Network Sensor data port.

### Procedure {#procedure}

1.  Go to [https://www.oracle.com/cloud/sign-in.html](https://www.oracle.com/cloud/sign-in.md) and sign in to Oracle Cloud Infrastructure.

2.  Create a network load balancer for sending mirrored traffic to the Virtual Network Sensor.

    Due to current Oracle Cloud Infrastructure restrictions, mirrored traffic can only be sent from a network load balancer to the Virtual Network Sensor. For details, see [VTAP sources and targets](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/vtap.htm).

    1.  Click the navigation menu icon (![](/images/OracleOCI_navigation_menu=20250922030811.webp)) on the top left and go to **Networking → Network load balancer**.

    2.  Click **Create network load balancer**.

    3.  Specify a name for the network load balancer.

    4.  Select a compartment.

        For simplicity and ease of management, keep the network load balancer in the same compartment as the Virtual Network Sensor instance.

    5.  Select **Private** for the visibility type.

    6.  Under **Header preservation**, enable **Source/destination header (IP, port) preservation (network load balancer)**.

    7.  Turn on **Enable symmetric hashing**.

    8.  Under **Choose networking**, select the virtual cloud network as well as the compartment where the network load balancer resides.

        For simplicity and ease of management, keep the network load balancer in the same compartment and virtual cloud network as the Virtual Network Sensor instance.

    9.  Select the subnet as well as the compartment where the network load balancer resides.

        Select the subnet used by the Virtual Network Sensor data port.

    10. Enable **Use network security groups to control traffic** and select the compartment and network security group for the Virtual Network Sensor data port.

    11. Add security attributes and tags as needed and click **Next**.

    12. Specify a name for your listener.

    13. Select **UDP/TCP/ICMP** for the type of traffic your listener handles and click **Next**.

    14. Add backends for the network load balancer.

        1.  Specify a name for the backend set.

        2.  Click **Add backends**.

        3.  Select **Compute instances** for the backend type.

        4.  Select the compartment where your Virtual Network Sensor instance resides and select the Virtual Network Sensor instance.

        5.  Specify the IP address of the Virtual Network Sensor instance previously recorded.

        6.  Click **Add backends**.

    15. Under **Specify health check policy**, select **TCP** for the protocol and specify **14789** for the port.

    16. Enable **Fail open**.

    17. Click **Next**, review the settings, and click **Create network load balancer**.

        When the creation is complete, the network load balancer details screen is displayed.

        :::note
        Currently, the Virtual Network Sensor instance does not answer the health checks from the network load balancer, which causes the backend set status to appear as **Critical**. This status can be safely ignored, as the network load balancer can still move traffic to the Virtual Network Sensor for monitoring, provided that **Fail open** is enabled.
        :::

    18. Record the **IP Address** on the **Details** tab for subsequent settings.

        This is the IP address of the network load balancer.

3.  Create a Virtual Test Access Point (VTAP) for mirroring traffic to the network load balancer.

    1.  Click the navigation menu icon (![](/images/OracleOCI_navigation_menu=20250922030811.webp)) on the top left and go to **Networking → VTAPs**.

    2.  Click **Create VTAP**.

    3.  Specify a name for your VTAP.

    4.  Select a compartment.

        For simplicity and ease of management, keep the VTAP in the same compartment as the Virtual Network Sensor instance.

    5.  Select the VCN where the Virtual Network Sensor instance resides.

    6.  In the **Source** section, select your traffic mirroring source.

        :::note
        To avoid any packet truncation in VTAP captured packets, make sure the source instance interfaces have their MTU set to 8950 or lower for IPv4, or 8930 or lower for IPv6. For details, see [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/vtap.htm).
        :::

    7.  In the **Target** section, select the subnet and the network load balancer created in step 2 as your traffic mirroring target.

    8.  Click **Select a capture filter** and select **Create new capture filter**.

    9.  Specify a name for your capture filter.

    10. Select a compartment.

        For simplicity and ease of management, keep the capture filter in the same compartment as the Virtual Network Sensor instance.

    11. Create a rule for inbound traffic.

        - Traffic direction: **Ingress**

        - Include/Exclude: **Include**

        - Source IPv4 CIDR or IPv6 prefix: **0.0.0.0/0**

        - Destination IPv4 CIDR or IPv6 prefix: **0.0.0.0/0**

        - IP protocol: **All**

    12. Click **+Another rule** and create a rule for outbound traffic.

        - Traffic direction: **Egress**

        - Include/Exclude: **Include**

        - Source IPv4 CIDR or IPv6 prefix: **0.0.0.0/0**

        - Destination IPv4 CIDR or IPv6 prefix: **0.0.0.0/0**

        - IP protocol: **All**

    13. Click **Create capture filter**.

    14. Click **Create VTAP**.

        The VTAP details screen is displayed.

    15. Click **Start** to start the VTAP.

4.  Configure the Virtual Network Sensor to accept health check traffic from your network load balancer.

    1.  Click the navigation menu icon (![](/images/OracleOCI_navigation_menu=20250922030811.webp)) on the top left and go to **Networking → Virtual cloud networks**.

    2.  Click the VCN where you have deployed the Virtual Network Sensor instance.

    3.  On the details page, perform one of the following actions depending on the option that you see:

        - On the **Security** tab, go to the **Network Security Groups** section.
        - Under **Resources**, select **Network Security Groups**.

    4.  Click the network security group you created for the Virtual Network Sensor management port.

    5.  Click the **Security rules** tab and then click **Add Rules** to add a rule for accepting traffic from the network load balancer:

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
        <td><p>Specify the IP address in CIDR notation of your NLB created in step 2.</p></td>
        <td><p>TCP</p></td>
        <td><p>All</p></td>
        <td><p>14789</p></td>
        <td><p>For answering NLB health check</p></td>
        </tr>
        </tbody>
        </table>
