---
slug: trend-vision-one-sg-virtual-app-oci
title: Deploy a Service Gateway virtual appliance with OCI
---

Deploy a Service Gateway virtual appliance with Oracle Cloud Infrastructure (OCI).

If your environment does not have VVMware, Microsoft Hyper-V, or Nutanix AHV, you can deploy the Service Gateway virtual appliance from the Oracle Cloud Console. Before you begin, review the [Service Gateway appliance system requirements](sg-sys-requirements.md) to ensure your virtual appliance has the settings needed to deploy the services you want to use.

:::note
The steps contained in these instructions are valid as of October 2025.
:::

### Procedure {#procedure}

1.  Go to **Workflow and Automation → Service Gateway Management**.

2.  Click **Download Virtual Appliance**.

    The **Service Gateway Virtual Appliance** panel appears.

3.  Select **Oracle Cloud Infrastructure**.

4.  Select a virtual appliance specification and click **Download Disk Image** to download a QCOW2 file.

    :::tip
    Copy the registration token for later steps. The registration token will expire within 24 hours if not used.
    :::

5.  To initiate the instance launch, sign in to the Oracle Cloud Console.

6.  Create a custom image of the Service Gateway virtual appliance.

    1.  In the Oracle Cloud Console, search for **Buckets**.

    2.  In the **Buckets** screen, create a new bucket, or select an existing one, then open the bucket.

    3.  In the **Objects** section, click **Upload**.

        <figure>
        <img src="./images/sg_oci_1=4b05fe63-5967-445c-9164-f27548af5ad9.webp" />
        </figure>

    4.  In the **Upload Objects** screen, select the downloaded QCOW2 file.

    5.  Click **Upload**. Wait until the image is completely uploaded.

    6.  In the Oracle Cloud Console, search for **Custom Images**.

    7.  In the **Custom Image** screen, click **Import image** to import the QCOW2 file you uploaded.

    8.  In the **Import Image** screen, provide a name for the custom image.

    9.  In the **Operating system** field, select **Rocky Linux**.

    10. Select **Import from an Object Storage bucket**, and select the desired bucket and QCOW2 file.

    11. In the **Image type** section, select **QCOW2**.

    12. Review the configuration, and click **Import image**.

7.  Create a Network Security Group for the Service Gateway virtual appliance you deploy.

    1.  In the Oracle Cloud Console, search for **Virtual Cloud Networks**.

    2.  Open the Virtual Cloud Network you would like to have for Service Gateway virtual appliance, and click the **Security** tab.

    3.  In the **Network Security Groups** section, click **Create Network Security Group**.

        <figure>
        <img src="./images/sg_oci_2=37d761f9-d8f1-4fcc-bc40-ceca189594a5.webp" />
        </figure>

    4.  In the **Create Network Security Group** screen, provide a name for the Network Security Group.

    5.  In the **Rule** section, add the following rules to the Network Security Group.

        <table>
        <colgroup>
        <col style="width: 17%" />
        <col style="width: 17%" />
        <col style="width: 17%" />
        <col style="width: 17%" />
        <col style="width: 33%" />
        </colgroup>
        <thead>
        <tr>
        <th><p>Service</p></th>
        <th><p>Destination port ranges</p></th>
        <th><p>Protocol</p></th>
        <th><p>Action</p></th>
        <th><p>Description</p></th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><p>SSH</p></td>
        <td><p>22</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>For accessing Service Gateway virtual appliance CLISH command</p></td>
        </tr>
        <tr>
        <td><p>HTTP</p></td>
        <td><p>80</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>Service enabled queries for on-premises Active Directory servers, connected Trend Micro products (such as endpoint agents), Predictive Machine Learning, File Reputation Services, or Third-Party Integration</p></td>
        </tr>
        <tr>
        <td><p>HTTPS</p></td>
        <td><p>443</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>Service enabled queries for on-premises Active Directory servers, connected Trend Micro products (such as endpoint agents), Predictive Machine Learning, File Reputation Services, or Third-Party Integration</p></td>
        </tr>
        <tr>
        <td><p>Custom TCP</p></td>
        <td><p>5274</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>Web Reputation Services or Web Inspection Service queries</p></td>
        </tr>
        <tr>
        <td><p>Custom TCP</p></td>
        <td><p>5275</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>Web Reputation Services or Web Inspection Service queries</p></td>
        </tr>
        <tr>
        <td><p>Custom TCP</p></td>
        <td><p>8080</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>Forward Proxy Service listening port for connection</p></td>
        </tr>
        <tr>
        <td><p>Custom TCP</p></td>
        <td><p>8088</p></td>
        <td><p>TCP</p></td>
        <td><p>Allow</p></td>
        <td><p>Zero Trust Secure Access On-Premises Gateway listening port for connection</p></td>
        </tr>
        </tbody>
        </table>

    6.  Review the configuration, and click **Create**.

8.  Create a VM instance.

    1.  In the Oracle Cloud Console, search for **Instances**.

    2.  In the **Instances** screen, click **Create instance**.

        <figure>
        <img src="./images/sg_oci_3=dad55f5c-b211-4628-a1a2-e42d0897adbb.webp" />
        </figure>

    3.  In the **Create compute instance** screen, provide a name for the VM instance.

    4.  In the **Image and shape** section, click **Change image**.

    5.  In the **Select an image** screen, select **My images** and **Custom images**.

        <figure>
        <img src="./images/sg_oci_4=c731ee32-4791-41d5-8d4f-d2ab7e5afc13.webp" />
        </figure>

    6.  Select the Service Gateway QCOW2 custom image.

    7.  Click **Select image**.

    8.  In the **Shape** section, click **Change shape**.

        <figure>
        <img src="./images/sg_oci_5=cf80f9b9-3048-4f26-8522-63e48fd0e5b0.webp" />
        </figure>

    9.  In the **Browse all shapes** screen, choose the CPU with the preferred specification.

        :::note
        The default machine type is VM.Standard.E4.Flex customized with 8 OCPU and 12 GB memory (minimal package) or 12 OCPU and 16 GB memory (standard package). For more information, see [Service Gateway appliance system requirements](sg-sys-requirements.md).
        :::

    10. Review the configuration. Click **Select shape**, and click **Next** to go to **Networking**.

    11. Provide a VNIC name, and select the existing Virtual Cloud Network and subnet.

    12. In the **Primary VNIC IP addresses** section, expand the **Advance options** section.

    13. Enable **Use network security groups to control traffic**. Select the Network Security Group you previously created.

    14. In the **Add SSH keys** section, provide the preferred configuration.

    15. If you would like to extend the storage of this VM instance, click **Next** to go to **Storage**.

        :::note
        The default storage capacity is 200 GB for the minimal package and 500 GB for the standard package. For more information, see [Service Gateway appliance system requirements](sg-sys-requirements.md).
        :::

    16. Click **Next** to go to **Review**.

    17. Review the configuration of the VM instance, and click **Create**.

    18. After the deployment is completed, the Service Gateway virtual appliance is ready to connect and configure when **State** shows **Running**.

9.  Connect to the VM instance.

    1.  Open a terminal and run the following command: `ssh -i path/to/ssh/private/key admin@<public-ip-address>`

    2.  Type `enable` and press the **ENTER** key to enable administrative commands. Provide your password when asked.

        The command prompt changes from \> to \#.

10. Configure the required network settings using the following CLISH commands:

    ``` codeblock
    Configure network primary ipv4.static <interface> <ip_cidr> <gateway> <dns1> [dns2] [cni]

    Configure static IPv4 network settings for the primary network interface

    <interface>: Name of the network interface (for example, eth0)

    <ip_cidr>: IPv4 address of the network interface in CIDR notation

    <gateway>: Gateway router address

    <dns1>: Primary DNS server address

    [dns2]: Secondary DNS server address

    [cni]: Internal network address pool (IP address ending in .0.0)
    ```

11. To register the Service Gateway virtual appliance to Trend Vision One, use an SSH tool, such as the latest version of PuTTY, and using an account with administrator privileges, type the following command.

    `register <registration_token>`

    You can obtain the token from the same screen you download the virtual appliance on Trend Vision One (step 4).

    :::note
    - If your environment uses a local Network Time Protocol (NTP) server, make sure the NTP server synchronizes with the local time for successful registration.

    - Trend Micro recommends using an SSH client to easily copy and paste the registration token.
    :::

12. Use the CLI to configure other settings, if required.

    For more information on available commands, see [Service Gateway CLI commands](service-gateway-cli-commands.md).

    For details on setting up a virtual appliance with two network cards, see [Service Gateway Virtual Appliance dual network card configuration](https://success.trendmicro.com/dcx/s/solution/000292296?language=en_US).
