---
slug: trend-vision-one-virtual-network-sensor-aws
sidebar_position: 1
title: Deploy a Virtual Network Sensor with AWS
---

Deploy a Virtual Network Sensor to your AWS cloud environment.

To monitor the traffic of your network on Amazon Web Services (AWS), you can deploy a Virtual Network Sensor to your AWS environment.

<figure>
<img src="./images/AWS_VNS=GUID-6b88d3c8-219c-44c0-b5e7-4bed21f2ce11.webp" />
<figcaption>Example mapping of a Virtual Network Sensor deployment within the AWS environment</figcaption>
</figure>

Before you begin, review the [Virtual Network Sensor system requirements](../../../network-inventory/virtual-network-sensor/network-sensor-sys-reqs) and ensure you have a sign in with permission to access the EC2 service.

To deploy the Virtual Network Sensor, you must complete the following steps:

1.  Choose or create a VPC for the Virtual Network Sensor instance.

2.  Choose or create the subnets on the VPC for the Virtual Network Sensor data port and management port.

    Trend Micro recommends using separate, private subnets for the data and management ports. For more information on how to set up a VPC and subnet, refer to the [Amazon documentation](https://docs.aws.amazon.com/index.md).

3.  [Choose or create security groups](./aws-security-groups-network-sensor) for the data port and management port.

    If you use existing network security groups, make sure their settings meet the rule requirements listed in [Configure AWS security groups for Virtual Network Sensor](./aws-security-groups-network-sensor).

4.  Launch an instance using one of the following deployment methods:

    1.  [Use an Amazon Machine Image (AMI)](./launching-ami-instance)

    2.  [Use a CloudFormation template](./deploy-vns-cf-template)

5.  Verify the Virtual Network Sensor can connect with Network Inventory.

    1.  In the Trend Vision One console, go to **Network Security → Network Inventory → Virtual Network Sensor**.

    2.  Check whether there is an entry in the **Identifier** column with the Virtual Network Sensor IP address recorded in step [22](./launching-ami-instance).

    If the Virtual Network Sensor does not appear in Network Inventory after deployment, verify the following settings:

    - Network settings (NIC/vNIC setting and order)

    - Firewall settings

    - Proxy settings if using a proxy

    - Review the [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) to verify and test the connection

6.  Configure the network settings for the Virtual Network Sensor.

    - For traffic mirroring settings, see [Configure the Virtual Network Sensor as a traffic mirror target](./network-sensor-traffic-mirror).

    - To configure a load balancer, see [Deploy a Virtual Network Sensor behind a network load balancer](./network-behind-load-balancer).

    After configuring your network settings, access the Virtual Network Sensor console and use the command `show traffic` to verify the Virtual Network Sensor is receiving traffic. For more information about troubleshooting, see [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) and [Virtual Network Sensor CLI commands](../../../network-inventory/virtual-network-sensor/virtual-network-sensor-cli-commands).

**Related information**

- [Configure AWS security groups for Virtual Network Sensor](./aws-security-groups-network-sensor "Prepare security groups before deploying the instance to ensure properly configured rules for the data port and management port.")
- [Launch a Virtual Network Sensor AMI instance](./launching-ami-instance "Use an Amazon Machine Image (AMI) to deploy a Virtual Network Sensor to your cloud environment.")
- [Deploy a Virtual Network Sensor from a CloudFormation template](./deploy-vns-cf-template "Use a CloudFormation template to deploy a Virtual Network Sensor to your cloud environment.")
- [Configure the Virtual Network Sensor as a traffic mirror target](./network-sensor-traffic-mirror "Configure your Virtual Network Sensor instance to receive mirrored traffic.")
- [Deploy a Virtual Network Sensor behind a network load balancer](./network-behind-load-balancer "Configure your Virtual Network Sensor instance for use with a network load balancer (NLB).")
