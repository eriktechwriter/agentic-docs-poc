---
slug: trend-vision-one-deploy-network-sensor-azure
sidebar_position: 1
title: Deploy a Virtual Network Sensor with Microsoft Azure
---

Deploy your Virtual Network Sensor to your Azure cloud environment.

To monitor the traffic of your network on Microsoft Azure, you can deploy a Virtual Network Sensor to your Azure environment.

<figure>
<img src="./images/Azure_VNS=GUID-f1efebe3-32e2-4832-bda5-01bf4000239b.webp" />
<figcaption>Example mapping of a Virtual Network Sensor deployment within the Azure environment</figcaption>
</figure>

Before you begin, review the [Virtual Network Sensor system requirements](../../../network-inventory/virtual-network-sensor/network-sensor-sys-reqs) and ensure you have a sign in with permission to deploy virtual machines on the target subscription.

To deploy the Virtual Network Sensor, you must complete the following steps:

1.  Choose or create a virtual network for the Virtual Network Sensor instance.

    For more information on how to create a virtual network, refer to the Azure documentation.

2.  Choose or [create the network security group and subnets](./network-subnets-network-sensor) for the Virtual Network Sensor data port and management port.

    Trend Micro recommends using different subnets for the data and management ports.

3.  [Launch an instance](./launching-network-sensor-azure) with the Virtual Network Sensor.

4.  Verify the Virtual Network Sensor can connect with Network Inventory.

    If the Virtual Network Sensor does not appear in Network Inventory after deployment, verify the following settings:

    - Network settings (NIC/vNIC setting and order)

    - Firewall settings

    - Proxy settings if using a proxy

    - Review the [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) to verify and test the connection

5.  Configure the network settings for the Virtual Network Sensor.

    :::note
    Trend Micro recommends using Microsoft Azure virtual network TAP with Virtual Network Sensor. For more information, see [Set up traffic mirroring with Azure virtual network TAP](./azure-vtap-mirror).
    :::

6.  After configuring your network settings, access the Virtual Network Sensor console and use the command `show traffic` to verify the Virtual Network Sensor is receiving traffic. For more information about troubleshooting, see [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) and [Virtual Network Sensor CLI commands](../../../network-inventory/virtual-network-sensor/virtual-network-sensor-cli-commands).

**Related information**

- [Create a network security group and subnets for the Virtual Network Sensor](./network-subnets-network-sensor "Prepare a network security group and two subnets to deploy the Virtual Network Sensor in your Azure subscription.")
- [Launch a Virtual Network Sensor instance on Azure](./launching-network-sensor-azure "Deploy the Virtual Network Sensor on you Azure cloud environment.")
- [Set up traffic mirroring with Azure virtual network TAP](./azure-vtap-mirror "Learn how to configure traffic mirroring for your Virtual Network Sensor with Microsoft Azure virtual network TAP.")
- [Tips for setting up traffic mirroring with Gigamon VUE Cloud Suite for Azure](./gigamon-vue-cloud-suite-azure "Review tips and recommendations for configuring your Azure environment to enable traffic mirroring with Gigamon.")
