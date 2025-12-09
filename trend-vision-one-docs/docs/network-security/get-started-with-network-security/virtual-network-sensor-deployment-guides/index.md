---
slug: trend-vision-one-network-sensors-deploy-guides
sidebar_position: 1
title: Virtual Network Sensor deployment guides
---

Connect and configure the Virtual Network Sensor to monitor network traffic in Network Security.

The **Network Security** app enables greater visibility of your environment through deployment of appliances which monitor traffic and collect data to help determine if there is an active attack on your network. Virtual Network Sensor is recommended for new users or users wishing to take advantage of a lightweight network sensor that is easier to set up and manage.

The following steps provide a high-level overview of how to deploy and connect Virtual Network Sensor to Trend Vision One.

### Procedure {#procedure}

1.  Review the [Virtual Network Sensor system requirements](../../network-inventory/virtual-network-sensor/network-sensor-sys-reqs) before starting and ensure you have adequate resources for the Virtual Network Sensor.

2.  Download the Virtual Network Sensor disk image or token from **Network Inventory**.

3.  Configure network settings and deploy a Virtual Network Sensor.

    Review the deployment guide for your desired platform and security environment.

    - Deployment on hosted virtual machines:

      - [Microsoft Hyper-V on Windows Server 2016 or later](./deploy-a-virtual-network-sensor-with-hyper-v)

      - [KVM](./deploy-a-virtual-network-sensor-with-kvm)

      - [Nutanix AHV](./deploy-a-virtual-network-sensor-with-nutanix-ahv)

      - [VMware ESXi version 6.5 (Build: 19092475) or later](./deploy-a-virtual-network-sensor-with-vmware-esxi)

      - [VMware vCenter](./deploy-a-virtual-network-sensor-with-vmware-vcenter)

    - Deployment on cloud environments:

      - [AWS cloud accounts using an Amazon Machine Image (AMI)](./deploy-a-virtual-network-sensor-with-aws)

      - [AWS S3 buckets using a CloudFormation template](./deploy-a-virtual-network-sensor-with-aws/deploy-vns-cf-template)

      - [Google Cloud projects](./deploy-a-virtual-network-sensor-with-google-cloud/launching-vns-instance-google-cloud)

      - [Microsoft Azure cloud subscriptions](./deploy-a-virtual-network-sensor-with-microsoft-azure)

      - [Oracle Cloud Infrastructure](./deploy-a-virtual-network-sensor-with-oracle-cloud-infrastructure)

    If you want to use a third-party network switch or device to configure traffic mirroring for your Virtual Network Sensor, see [Traffic mirroring with network devices](./traffic-mirroring-network-devices).

4.  Verify your Virtual Network Sensors appear in **Network Inventory**.

5.  If your Virtual Network Sensor does not appear in **Network Inventory**, check the following:

    - Network settings (NIC/vNIC setting and order)

    - Firewall settings

    - Proxy settings if using a proxy

    - Review the [Virtual Network Sensor FAQ](../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) to verify and test the connection.

**Related information**

- [Deploy a Virtual Network Sensor with AWS](./deploy-a-virtual-network-sensor-with-aws "Deploy a Virtual Network Sensor to your AWS cloud environment.")
- [Deploy a Virtual Network Sensor with Google Cloud](./deploy-a-virtual-network-sensor-with-google-cloud "Deploy a Virtual Network Sensor to your Google Cloud environment.")
- [Deploy a Virtual Network Sensor with Microsoft Azure](./deploy-a-virtual-network-sensor-with-microsoft-azure "Deploy your Virtual Network Sensor to your Azure cloud environment.")
- [Deploy a Virtual Network Sensor with Oracle Cloud Infrastructure](./deploy-a-virtual-network-sensor-with-oracle-cloud-infrastructure "Deploy a Virtual Network Sensor to your Oracle Cloud Infrastructure (OCI) cloud environment.")
- [Deploy a Virtual Network Sensor with Hyper-V](./deploy-a-virtual-network-sensor-with-hyper-v "Learn how to deploy your own Virtual Network Sensor with Microsoft Hyper-V.")
- [Deploy a Virtual Network Sensor with KVM](./deploy-a-virtual-network-sensor-with-kvm "Learn how to deploy your own Virtual Network Sensor with KVM, using Red Hat Enterprise Linux 9.2 as an example.")
- [Deploy a Virtual Network Sensor with Nutanix AHV](./deploy-a-virtual-network-sensor-with-nutanix-ahv "Learn how to deploy your own Virtual Network Sensor on Nutanix AHV.")
- [Deploy a Virtual Network Sensor with VMware ESXi](./deploy-a-virtual-network-sensor-with-vmware-esxi "Learn how to deploy your own Virtual Network Sensor on VMware ESXi.")
- [Deploy a Virtual Network Sensor with VMware vCenter](./deploy-a-virtual-network-sensor-with-vmware-vcenter "Learn how to deploy your own Virtual Network Sensor on VMware vCenter.")
- [Virtual Network Sensor system requirements](./network-sensor-system-requirements "View the system requirements for Virtual Network Sensor.")
- [Traffic mirroring with network devices](./traffic-mirroring-network-devices "Information regarding traffic mirroring with physical switches and network devices.")
