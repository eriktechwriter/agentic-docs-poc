---
slug: trend-vision-one-deploy-pac-nutanix-ahv
title: Deploy the Private Access connector on Nutanix AHV
---

Connect your Nutanix AHV applications with Zero Trust Secure Access Private Access and prevent unauthorized intrusions.

Private Access Connectors connect your internal applications with Zero Trust Secure Access Private Access, which allows you to control access to sensitive corporate resources. To ensure high availability (HA) and facilitate load-balancing on high traffic apps, install and group together at least 2 connectors in each environment. Before attempting to deploy the Private Access Connector, ensure that your environment meets the minimum [system requirements](pa-connector-system-reqs.md).

:::note
The instructions here use Prism (UI). The Nutanix instructions were valid as of August 30, 2025.
:::

### Procedure {#procedure}

1.  In the Trend Vision One console, go to **Zero Trust Secure Access → Secure Access Configuration → Private Access Configuration**.

2.  If you need to create a new connector group:

    1.  Click **Add Private Access Connector Group**.

    2.  Enter a unique name and description for the group

    3.  Click **Save**.

3.  

4.  Select **Nutanix AHV** from the **Platform** list.

5.  Click Download Disk Image to download the qcow2 file.

    Verify that the file name and extension are: `TrendMicroVisionOne-PrivateAccessConnector.qcow2`

6.  Copy the Registration token for later use.

    :::warning[Important]
    The Registration token is only valid for 7 days. If the token expires, you must start again.
    :::

**Related information**

- [Deploy the Private Access connector on Nutanix AHV using ACLI](deploy-pa-connector-nutanix-acli.md)
- [Create the VM using REST API (v3)](create-vm-using-rest-api-v3.md)
- [Configure the connector with Trend Vision One](configure-connector-nutanix.md)

## Upload the disk image to the Nutanix AHV cluster {#upload-the-disk-image-to-the-nutanix-ahv-cluster}

### Procedure {#procedure-1}

1.  In your Nutanix Prism Web console, go to **Home → Settings** in the upper left corner.

2.  Select Image Configuration and click Upload Image.

3.  Enter the image name.

4.  Select DISK for **Image Type**.

5.  Select the container where you want to store your image.

6.  Select **Upload a file**. Locate the downloaded QCOW2 file from your directory and click **Open**.

7.  Click **Save**, and wait until the image is completely uploaded.

    This should take about 5 to 7 minutes.

## Create a virtual machine {#create-a-virtual-machine}

### Procedure {#procedure-2}

1.  

## Import the connector build image {#import-the-connector-build-image}

### Procedure {#procedure-3}

1.  Download the connector build image to the local machine from Trend Vision One.

    :::note
    This image must be in the qcow2 format to work with Nutanix AHV.
    :::

2.  Sign in to the Nutanix web console.

3.  Select **Settings** from the list at the top of the window.

4.  Select **Image Configuration** from the menu on the left side of the window

5.  Select **Upload Image** then enter the following information for the image:

    1.  Enter a name to use within Nutanix for the connector build image.

    2.  Enter DISK for image type.

    3.  Select the desired container for the Storage Container.

    4.  Select **Upload a file**

    5.  Click **Choose File** and then select the qcow2 connector build image stored on the local machine.

    6.  Click **Save**.

## Create the connector VM {#create-the-connector-vm}

### Procedure {#procedure-4}

1.  Sign in to the Nutanix web console.

2.  Select **VM** from the list at the top of the window.

3.  Click **Create VM** in the upper right corner and enter the following for the VM:

    - Name: Enter a name to use within Nutanix for the connector VM

    - vCPU(s): 4

    - Number Of Cores Per vCPU: 1

    - Memory: 8 GiB

4.  Select **Legacy Bios**.

5.  Click **Add New Disk** and enter the following information for the disk:

    - Type: DISK

    - Operation: Clone from Image Service Bus

    - Type: IDE

    - Image: Select name given to connector build image when it was imported to Nutanix

    - Index: Next Available

6.  Click **Add**.

7.  Click **Add New NIC** and then enter the following for the NIC:

    - Subnet: Select desired subnet
    - Network Connection: Connected Select Assign with DHCP or Assign Static IP with an IP address as needed

8.  Click **Add**.

9.  Click **Save**.

## Turn connector VM on and off {#turn-connector-vm-on-and-off}

### Procedure {#procedure-5}

1.  Login to the Nutanix web console using a web browser.

2.  Select **VM** from the list at the top of the window.

3.  Select **Table** in the top left of the window

4.  Select the name of the connector VM that you want to turn on or off

    - If the connector is off, click on **Power on** to turn the VM on

    - If the connector is on, click on **Power Off Actions** then select the desired action like **Power off**

## Configure the connector with Trend Vision One {#configure-the-connector-with-trend-vision-one}

### Procedure {#procedure-6}

1.  In the Trend Vision One Console:

    1.  In the Trend Vision One console, go to **Zero Trust Secure Access → Secure Access Configuration → Private Access Configuration**.

    2.  For customers that need to create a new connector group, click **Add Private Access Connector Group**.

        1.  Provide a unique name and description for the group.
        2.  Click **Save**.

    3.  Locate your **Connector group** name in the list and click the **New connector** (![](/images/add_connector=683f3c84-a774-40c0-bd9b-4663fcd2b53f.webp)) icon.

        The **Private Access Connector Virtual Appliance** panel appears.

    4.  Select **Nutanix AWH** from the **Platform** list.

    5.  Click **Download Disk Image** to get the qcow2 connector build image to import into Nutanix.

    6.  Save the registration token to use in step 3 below

2.  In the Nutanix web console:

    1.  Click the drop-down at the top of the window and select **VM**.

    2.  Click **Table** in the top left of the window.

    3.  Turn on the connector if not already on.

    4.  Find the IP address for the connector

3.  In a terminal session on the local machine:

    1.  Make an SSH connection to the connector IP using **admin** for the user and **saseztna** for the password.

    2.  Run **passwd** and configure a new admin password.

    3.  Run **enable** and specify the just configured new admin password to go into privileged mode.

    4.  Run **configure dns primary \<IP address\>** and **configure dns secondary \<IP address\>** to configure the DNS servers.

    5.  Run **register \<registration token from step 1\>** to register the connector withTrend Vision One.
