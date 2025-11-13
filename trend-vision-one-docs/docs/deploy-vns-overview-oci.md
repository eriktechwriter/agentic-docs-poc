---
slug: trend-vision-one-deploy-vns-overview-oci
title: Deploy a Virtual Network Sensor with Oracle Cloud Infrastructure
---

Deploy a Virtual Network Sensor to your Oracle Cloud Infrastructure (OCI) cloud environment.

To monitor the traffic of your network on Oracle Cloud Infrastructure (OCI), you can deploy a Virtual Network Sensor to your OCI environment.

Before you begin, review the [Virtual Network Sensor system requirements](network-sensor-sys-reqs.md).

To deploy the Virtual Network Sensor, you must complete the following steps:

1.  Choose or create a virtual cloud network (VCN) for the Virtual Network Sensor instance.

    For more information on how to set up a VCN, refer to the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/create_vcn.htm).

2.  Choose or create subnets on the VCN selected in step 1 for the Virtual Network Sensor data port and management port.

    Trend Micro recommends using separate, private subnets for the data and management ports.

    For more information on how to set up subnets, refer to the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/create_subnet.htm).

3.  [Choose or create separate network security groups](create-security-group-vns-oci.md) for the Virtual Network Sensor data port and management port.

    If you use existing network security groups, make sure their settings meet the rule requirements listed in [Create network security groups for Virtual Network Sensor](create-security-group-vns-oci.md).

4.  [Launch an instance of Virtual Network Sensor](launch-vns-instance-oci.md).

5.  Mirror traffic to the Virtual Network Sensor.

    For details, see [Configure traffic mirroring on Oracle Cloud Infrastructure](configure-traffic-mirroring-oci.md).

    After configuring your network settings, access the Virtual Network Sensor console and use the command `show traffic` to verify the Virtual Network Sensor is receiving traffic. For more information about troubleshooting, see [Virtual Network Sensor FAQ](virtual-network-sensor-faqs.md) and [Virtual Network Sensor CLI commands](virtual-network-sensor-cli-commands.md).

**Related information**

- [Create network security groups for Virtual Network Sensor](create-security-group-vns-oci.md "Prepare network security groups before deploying the instance to Oracle Cloud Infrastructure to ensure properly configured rules for the data port and management port.")
- [Launch a Virtual Network Sensor instance on Oracle Cloud Infrastructure](launch-vns-instance-oci.md "Deploy the Virtual Network Sensor on your Oracle Cloud Infrastructure environment.")
- [Configure traffic mirroring on Oracle Cloud Infrastructure](configure-traffic-mirroring-oci.md "Set up your VCN networks to enable traffic mirroring to your Virtual Network Sensor data port.")
