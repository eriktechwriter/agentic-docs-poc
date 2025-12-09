---
slug: trend-vision-one-deploy-network-sensor-kvm
sidebar_position: 1
title: Deploy a Virtual Network Sensor with KVM
---

Learn how to deploy your own Virtual Network Sensor with KVM, using Red Hat Enterprise Linux 9.2 as an example.

Virtual Network Sensor is a lightweight network sensor that scans your network activity and feeds network activity data to Trend Vision One and allows you to discover unmanaged assets and gain a holistic view of your attack surface. Before using the features of **Network Security**, you need to set up your Virtual Network Sensor and connect your sensor to Trend Vision One.

:::warning[Important]
Before deploying the Virtual Network Sensor, make sure you complete the following:

- Review the [Virtual Network Sensor system requirements](../network-sensor-system-requirements) and ensure that you have adequate system resources.

- Add the [Virtual Network Sensor firewall exceptions](../../../../getting-started/getting-started-with-trend-vision-one/firewall-exception-requirements-for-trend-vision-one) to your firewall settings.

- Prepare the following resources:

  - KVM environment for hosting a virtual appliance (at least 8 GB RAM, 2 virtual CPUs, and 50 GB of disk space)

  - Root privileges

  - The destination folder for the Virtual Network Sensor instance (which may require administrator permission for access)

  - Virtual switch for the management port

  - Virtual switch for the data port

  - Console access on virt-manager or virt-viewer

  - Software requirements: libvirt version 8.0.0, QEMU version 6.2.0, and virt-install version 3.2.0
:::

### Procedure {#procedure}

1.  In the Red Hat Enterprise Linux 9.2 environment (KVM host), install the required software.

2.  On the KVM host CLI, ensure that you have root privileges and create your destination folder and the data and management ports.

3.  On the Trend Vision One console, go to **Network Security → Network Inventory → Virtual Network Sensor**.

4.  Click **Deploy Virtual Network Sensor**.

    The **Virtual Network Sensor Deployment** panel appears.

5.  Select **KVM** for the platform.

6.  Set the **Admin password** and confirm the password.

    The password must contain the following:

    - 12 to 32 characters

    - Both uppercase and lowercase characters

    - At least one number (0-9)

    - At least one special character: ~!\`@#$%^&\*()/\_+=\[\]{}-\\\<\>',.?:;" or space

    :::note
    This step is used to set the default admin password to access the Virtual Network Sensor command line interface after deployment.
    :::

7.  Select the **Connection method**.

    - **Direct connection**: the Virtual Network Sensor connects to Trend Vision One directly. Make sure the Virtual Network Sensor is able to connect to the internet when using this configuration.

    - **Connect using a custom proxy**: the Virtual Network Sensor connects to Trend Vision One through a third-party proxy. After choosing this method, configure the following fields:

      - **Proxy address**: Specify the IP address of the proxy.

      - **Proxy port**: Specify the connecting port of the proxy.

      - **Proxy server requires authentication**: (Optional) Select if the proxy requires authentication credentials.

      - **User name**: Specify the user name for the proxy credentials.

      - **Password**: Specify the password for the proxy credentials.

    - **Connect using a Service Gateway as proxy**: the Virtual Network Sensor connects to Trend Vision One through a Service Gateway. Select a Service Gateway to use for this method.

      :::warning[Important]
      The Virtual Network Sensor must be able to connect to a Service Gateway with the Forward Proxy Service configured and enabled. For more information, see [Manage services in Service Gateway](../../../../workflow-and-automation/service-gateway-management/service-gateway-appliance-configuration/manage-services-in-service-gateway).
      :::

8.  Click **Download Disk Image**.

9.  Extract the disk image zip file.

10. On the KVM host CLI, execute `$ cp -a cacert.pem checksum checksum.p7 vns_deploy.sh vns_meta.iso \vns_system.qcow2 <destination_folder>/` to copy the files to the destination folder.

11. Execute `$ bash ./vns_deploy.sh --mgmt <mgmt_network> --data <data_network>` to deploy Virtual Network Sensor.

    Your Virtual Network Sensor deploys and automatically connects to Network Inventory.

12. To confirm that your Virtual Network Sensor has successfully deployed, go to **Network Security → Network Inventory → Virtual Network Sensor** on the Trend Vision One console to view information about your deployed Virtual Network Sensor.

    If the Virtual Network Sensor does not appear in Network Inventory after deployment, verify the following settings:

    - Network settings (NIC/vNIC setting and order)

    - Firewall settings

    - Proxy settings if using a proxy

    - Review the [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs) to verify and test the connection

    :::tip
    - For information about troubleshooting Virtual Network Sensor, see [Virtual Network Sensor CLI commands](../../../network-inventory/virtual-network-sensor/virtual-network-sensor-cli-commands).

    - The Virtual Network Sensor default IP allocation is DHCP. For more information about changing the IP settings and registering manually, go to [Virtual Network Sensor FAQ](../../../network-security-troubleshooting-faq/virtual-network-sensor-faqs).
    :::

**Related information**

- [KVM network settings](./kvm-network-settings "After successfully deploying your Virtual Network Sensor, configure your network based on your requirements.")
- [Prepare a vSwitch](./preparing-vswitch "Set up a vSwitch to prepare to apply recommended network settings.")
- [Configure internal network traffic with Open vSwitch (SPAN)](./internal-traffic-open-vswitch-span "Configure internal network traffic with the Open vSwitch using to allow Virtual Network Sensor to monitor data.")
- [Configure external network traffic with Open vSwitch (SPAN)](./network-traffic-vswitch-span "Configure external network traffic with the Open vSwitch using SPAN to allow Virtual Network Sensor to monitor data.")
- [Configure external network traffic with Open vSwitch (RSPAN)](./external-traffic-open-vswitch-rspan "Configure external network traffic with the Open vSwitch using RSPAN to allow Virtual Network Sensor to monitor data.")
- [Configure external inter-VM traffic with ERSPAN (KVM host)](./inter-vm-traffic-erspan-kvm "Configure network settings to allow Virtual Network Sensor to monitor data.")
- [Configure external network traffic with PCI passthrough (KVM host)](./-pci-passthrough-kvm-host "Configure external network traffic with a PCI passthrough to allow Virtual Network Sensor to monitor data.")
