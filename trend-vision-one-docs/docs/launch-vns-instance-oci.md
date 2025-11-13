---
slug: trend-vision-one-launch-vns-instance-oci
title: Launch a Virtual Network Sensor instance on Oracle Cloud Infrastructure
---

Deploy the Virtual Network Sensor on your Oracle Cloud Infrastructure environment.

:::note
The steps contained in these instructions are valid as of September 2025.
:::

Before you begin, make sure you have completed the following tasks:

- Choose or create a VCN for the Virtual Network Sensor instance.

  For more information on how to set up a VCN, refer to the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/create_vcn.htm).

- Choose or create the subnets on the selected VCN for the Virtual Network Sensor data port and management port.

  Trend Micro recommends using separate, private subnets for the data and management ports.

  For more information on how to set up subnets, refer to the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Network/Tasks/create_subnet.htm).

- [Choose or create separate network security groups](create-security-group-vns-oci.md) for the Virtual Network Sensor data port and management port.

  If you use existing network security groups, make sure their settings meet the rule requirements listed in [Create network security groups for Virtual Network Sensor](create-security-group-vns-oci.md).

### Procedure {#procedure}

1.  Specify Virtual Network Sensor deployment settings and download the Virtual Network Sensor image from Trend Vision One.

    1.  In the Trend Vision One console, go to **Network Security → Network Inventory → Virtual Network Sensor**.

    2.  Click **Deploy Virtual Network Sensor**.

        The **Virtual Network Sensor Deployment** panel appears.

    3.  Select **Oracle Cloud Infrastructure** for the platform.

    4.  Click **Download Disk Image** to download the Virtual Network Sensor image and extract the image from the downloaded file.

    5.  Set the **Admin password** and confirm the password.

        The password must contain the following:

        - 12 to 32 characters

        - Both uppercase and lowercase characters

        - At least one number (0-9)

        - At least one special character: ~!\`@#$%^&\*()/\_+=\[\]{}-\\\<\>',.?:;" or space

        :::note
        This step is used to set the default admin password to access the Virtual Network Sensor command line interface after deployment.
        :::

    6.  Select the **Connection method**.

        - **Direct connection**: the Virtual Network Sensor connects to Trend Vision One directly. Make sure the Virtual Network Sensor is able to connect to the internet when using this configuration.

        - **Connect using a custom proxy**: the Virtual Network Sensor connects to Trend Vision One through a third-party proxy. After choosing this method, configure the following fields:

          - **Proxy address**: Specify the IP address of the proxy.

          - **Proxy port**: Specify the connecting port of the proxy.

          - **Proxy server requires authentication**: (Optional) Select if the proxy requires authentication credentials.

            - **User name**: Specify the user name for the proxy credentials.

            - **Password**: (Optional) Specify the password for the proxy credentials.

        - **Connect using a Service Gateway as proxy**: the Virtual Network Sensor connects to Trend Vision One through a Service Gateway. Select a Service Gateway to use for this method.

          :::warning[Important]
          The Virtual Network Sensor must be able to connect to a Service Gateway with the Forward Proxy Service configured and enabled. For more information, see [Manage services in Service Gateway](managing-services-service-gateway.md).
          :::

    7.  Click **Download Token** to download the token file.

        The token file contains important information for the Virtual Network Sensor, including the configured admin password and information that allows the Virtual Network Sensor to connect and on-board with Network Inventory automatically.

2.  Upload the Virtual Network Sensor image to the Object Storage service in Oracle Cloud Infrastructure.

    1.  Go to [https://www.oracle.com/cloud/sign-in.html](https://www.oracle.com/cloud/sign-in.md) and sign in to Oracle Cloud Infrastructure.

    2.  In the top navigation bar, select your target region for deploying the Virtual Network Sensor.

    3.  Click the navigation menu icon (![](/images/OracleOCI_navigation_menu=20250922030811.webp)) on the top left and go to **Storage → Buckets**.

    4.  Select a compartment.

        For simplicity and ease of management, keep the bucket in the same compartment as the Virtual Network Sensor instance to be deployed.

    5.  On the bucket list screen, select an existing bucket or click **Create Bucket** to create a bucket for uploading the Virtual Network Sensor image.

    6.  On the bucket details screen, click **Upload**.

    7.  Drag the extracted Virtual Network Sensor image file in qcow2 format to the **Choose Files from your Computer** section and click **Upload**.

    8.  Wait for the upload to complete and click **Close**.

        The upload may take a few minutes to complete.

3.  Import the Virtual Network Sensor image to the Compute service in Oracle Cloud Infrastructure.

    1.  Click the navigation menu icon (![](/images/OracleOCI_navigation_menu=20250922030811.webp)) on the top left and go to **Compute → Custom Images**.

    2.  Click **Import image**.

    3.  Select a compartment.

        For simplicity and ease of management, keep the image in the same compartment as the Virtual Network Sensor instance to be deployed.

    4.  Specify a name for the Virtual Network Sensor image.

    5.  Select **Rocky Linux** for the operating system.

    6.  Use the default setting **Import from an Object Storage bucket**.

    7.  Select the bucket compartment and bucket to which you uploaded the Virtual Network Sensor image.

    8.  Select the object **vns_system.qcow2**.

    9.  Select **QCOW2** for the image type.

    10. Select **Paravirtualized mode** for the launch mode.

    11. Click **Import image** and wait for the import to complete.

        The import takes a few minutes to complete. When the image is imported, the status tag changes to **Available**.

4.  Create an instance from the imported image.

    1.  On the Virtual Network Sensor image details screen, click **Create instance**.

    2.  Specify a name for the instance.

    3.  Select an availability zone based on your requirements.

    4.  Select a compartment for the Virtual Network Sensor instance.

    5.  In the **Image and shape** section, click **Change shape**.

    6.  On the **Browse all shapes** screen, select **Intel** from the shape series.

    7.  Select **VM.Standard3.Flex** from the shape list and click the triangle icon in front of the shape to show the details.

    8.  In the shape details, change the number of OCPUs and amount of memory based on the network throughput you plan to monitor. For details, see [Virtual Network Sensor system requirements](network-sensor-sys-reqs.md).

    9.  Click **Select shape**.

    10. Click **Advanced options** and scroll down to the **Cloud-init script** section.

    11. Drag the token file you downloaded from Trend Vision One to the **Cloud-init script** section and click **Next**.

    12. Click **Next**.

        The **Networking** settings are displayed.

    13. Create a virtual network interface card (VNIC) for the Virtual Network Sensor management port.

        1.  Specify a VNIC name for the Virtual Network Sensor management port.

        2.  Specify the compartment and virtual cloud network for the Virtual Network Sensor management port.

        3.  Specify the subnet compartment and subnet for the Virtual Network Sensor management port.

        4.  Retain **Automatically assign private IPv4 address**.

        5.  Expand **Advanced options** and enable **Use network security groups to control traffic**.

        6.  Select the compartment and network security group you created for the Virtual Network Sensor management port.

        7.  In the **Add SSH keys** section, select **No SSH keys** and click **Next**.

    14. Click **Next**.

    15. Review the instance settings and click **Create**.

    16. Wait for the instance creation to complete.

        The instance creation takes a few minutes to complete. The status tag changes to **Running** when the instance is created.

    17. Click the **Networking** tab and record the **Private IPv4 address** for the Virtual Network Sensor instance.

    18. Go to the Trend Vision One console and verify the Virtual Network Sensor is connected with Network Inventory.

        1.  In the Trend Vision One console, go to **Network Security → Network Inventory → Virtual Network Sensor**.

        2.  Check whether there is an entry in the **Identifier** column with the Virtual Network Sensor IP address previously recorded.

        If the Virtual Network Sensor does not appear in Network Inventory after deployment, verify the following settings:

        - Firewall settings

        - Proxy settings if using a proxy

        - Review the [Virtual Network Sensor FAQ](virtual-network-sensor-faqs.md) to verify and test the connection

    19. Go back to the Oracle Cloud Infrastructure console and create a VNIC for the Virtual Network Sensor data port.

        :::note
        The number of VNICs you can create for the data port depends on the number of OCPUs you select for the shape **VM.Standard3.Flex**. For details, see the [Oracle Cloud Infrastructure documentation](https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm).
        :::

        1.  Click the **Networking** tab on the instance details screen.

        2.  Click **Create VNIC** in the **Attached VNICs** section.

        3.  Specify a name for the Virtual Network Sensor data port.

        4.  Specify the compartment and virtual cloud network for the Virtual Network Sensor data port.

            Keep the data port in the same compartment and virtual cloud network as the management port.

        5.  Specify the subnet compartment and subnet for the Virtual Network Sensor data port.

            Trend Micro recommends using a different subnet for the data port than the one used for the management port.

        6.  Enable **Use network security groups to control traffic**.

        7.  Select the compartment and network security group you created for the Virtual Network Sensor data port.

        8.  Enable **Skip source/destination check**.

        9.  Retain **Automatically assign private IPv4 address**.

        10. Click **Submit** and wait for the attaching to complete.

            When the VNIC is created, its status tag changes to **Attached**.

    20. On the instance details screen, choose **Actions → Reboot** in the upper right corner to restart the instance.

5.  Change the Maximum Transmission Unit (MTU) for the Virtual Network Sensor data port.

    1.  Sign in to the Virtual Network Sensor directly or through SSH.

        - Default user name: `admin`

        - Password: admin password created in the Trend Vision One console

        - IP address: IP address of the Virtual Network Sensor previously recorded

    2.  Run `enable`.

    3.  Run `configure interface eth1`.

    4.  Run `mtu 9000`.

    5.  Run `exit`.

    6.  Run `show interface` and check that MTU has been changed to 9000.
