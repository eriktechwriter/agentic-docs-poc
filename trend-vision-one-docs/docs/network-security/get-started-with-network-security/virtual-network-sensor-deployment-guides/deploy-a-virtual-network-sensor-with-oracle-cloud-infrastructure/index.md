---
slug: trend-vision-one-deploy-vns-overview-oci
sidebar_position: 1
title: Deploy a Virtual Network Sensor with Oracle Cloud Infrastructure
---

Deploy a Virtual Network Sensor to your Oracle Cloud Infrastructure (OCI) cloud environment.

To monitor the traffic of your network on Oracle Cloud Infrastructure (OCI), you can deploy a Virtual Network Sensor to your OCI environment.

Before you begin, review the [Virtual Network Sensor system requirements](../../../network-inventory/virtual-network-sensor/network-sensor-sys-reqs).

To deploy the Virtual Network Sensor, you must complete the following steps:

1.  Choose or create a virtual cloud network (VCN) for the Virtual Network Sensor instance.

    For more information on how to set up a VCN, refer to the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/create_vcn.htm).

2.  Choose or create subnets on the VCN selected in step 1 for the Virtual Network Sensor data port and management port.

    Trend Micro recommends using separate, private subnets for the data and management ports.

    For more information on how to set up subnets, refer to the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/create_subnet.htm).

3.  [Choose or create separate network security groups](./create-security-group-vns-oci) for the Virtual Network Sensor data port and management port.

    If you use existing network security groups, make sure their settings meet the rule requirements listed in [Create network security groups for Virtual Network Sensor](./create-security-group-vns-oci).

4.  [Launch an instance of Virtual Network Sensor](./launch-vns-instance-oci).

5.  Mirror traffic to the Virtual Network Sensor.

    For details, see [Configure traffic mirroring on Oracle Cloud Infrastructure](./configure-traffic-mirroring-oci).

    After configuring your network settings, access the Virtual Network Sensor console and use the command `show traffic` to verify the Virtual Network Sensor is receiving traffic. For more information about troubleshooting, see [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) and [Virtual Network Sensor CLI commands](../../../network-inventory/virtual-network-sensor/virtual-network-sensor-cli-commands).

**Related information**

- [Create network security groups for Virtual Network Sensor](./create-security-group-vns-oci "Prepare network security groups before deploying the instance to Oracle Cloud Infrastructure to ensure properly configured rules for the data port and management port.")
- [Launch a Virtual Network Sensor instance on Oracle Cloud Infrastructure](./launch-vns-instance-oci "Deploy the Virtual Network Sensor on your Oracle Cloud Infrastructure environment.")
- [Configure traffic mirroring on Oracle Cloud Infrastructure](./configure-traffic-mirroring-oci "Set up your VCN networks to enable traffic mirroring to your Virtual Network Sensor data port.")
