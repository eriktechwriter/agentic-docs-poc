---
slug: trend-vision-one-configure-connector-nutanix
sidebar_position: 4
title: Configure the connector with Trend Vision One
---

### Procedure {#procedure}

1.  In the Trend Vision One Console:

    1.  Go to **Zero Trust Secure Access → Secure Access Configuration → Private Access Configuration**.

    2.  For customers who need to create a new connector group, click **Add Private Access Connector Group**.

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

    4.  Find the IP address for the connector.

3.  In a terminal session on the local machine:

    1.  Make an SSH connection to the connector IP using **admin** for the user and **saseztna** for the password.

    2.  Run **passwd** and configure a new admin password.

    3.  Run **enable** and specify the new admin password to go into privileged mode.

    4.  Run **configure dns primary \<IP address\>** and **configure dns secondary \<IP address\>** to configure the DNS servers.

    5.  Run **register \<registration token that you created earlier\>** to register the connector withTrend Vision One.
