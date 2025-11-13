---
slug: trend-vision-one-deploying-vns-google-cloud
title: Deploy a Virtual Network Sensor with Google Cloud
---

Deploy a Virtual Network Sensor to your Google Cloud environment.

To monitor the traffic of your network on Google Cloud, you can deploy a Virtual Network Sensor to your Google Cloud environment.

Before you begin, review the [Virtual Network Sensor system requirements](network-sensor-sys-reqs.md) and ensure you have a sign in with permission to deploy virtual machines on the target account.

To deploy the Virtual Network Sensor, you must complete the following steps:

1.  Configure the virtual private clouds (VPC) and subnets for the data and management ports.

    The Virtual Network Sensor requires assigning the data port and management port to separate VPCs. Additionally, the subnets must have different IP ranges and CIDR address.

    Trend Micro recommends deploying the data port to a different VPC from the mirror source VM.

    For configuration instructions, refer to the Google Cloud documentation.

2.  [Launch an instance](launching-vns-instance-google-cloud.md) of the Virtual Network Sensor.

3.  Verify the Virtual Network Sensor can connect with Network Inventory.

    If the Virtual Network Sensor does not appear in Network Inventory after deployment, verify the following settings:

    - Network settings (NIC/vNIC setting and order)

    - Firewall settings

    - Proxy settings if using a proxy

    - Review the [Virtual Network Sensor FAQ](virtual-network-sensor-faqs.md) to verify and test the connection

4.  Set up traffic mirroring in your environment.

    You can use any traffic mirroring solution you prefer. If you are unsure how to set up traffic mirroring, follow the recommended steps detailed in [Configure traffic mirroring on Google Cloud](traffic-mirroring-google-cloud.md).

    After configuring your network settings, access the Virtual Network Sensor console and use the command `show traffic` to verify the Virtual Network Sensor is receiving traffic. For more information about troubleshooting, see [Virtual Network Sensor FAQ](virtual-network-sensor-faqs.md) and [Virtual Network Sensor CLI commands](virtual-network-sensor-cli-commands.md).

**Related information**

- [Launch a Virtual Network Sensor instance on Google Cloud](launching-vns-instance-google-cloud.md "Deploy the Virtual Network Sensor on your Google Cloud environment.")
- [Configure traffic mirroring on Google Cloud](traffic-mirroring-google-cloud.md "Set up your VPC networks to enable traffic mirroring to your Virtual Network Sensor data port.")
