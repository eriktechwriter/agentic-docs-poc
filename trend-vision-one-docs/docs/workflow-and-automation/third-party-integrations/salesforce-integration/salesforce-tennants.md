---
slug: trend-vision-one-salesforce-tennants
sidebar_position: 2
title: Configure Salesforce tenants
---

Connect Salesforce tenants to share Salesforce metadata and information on system misconfigurations with Trend Vision One.

### Procedure {#procedure}

1.  Go to **Workflow and Automation → Third-Party Integrations**.

2.  Click **Salesforce**.

3.  Click one of the following to connect a tenant:

    - Click **Add a production tenant**.

    - Click **Add a sandbox tenant**.

    An unconfigured tenant appears in the list.

4.  In the **Status** column, click **Grant permissions** to allow Trend Vision One access to Salesforce data managed by the tenant.

    :::note
    Click **Details** to view the associated apps and specific permissions for the tenant.
    :::

5.  On the Salesforce console, sign in as an administrator or create a user profile with adequate permissions to grant access to Trend Vision One.

    :::warning[Important]
    If you are a standard Salesforce user, take the following step to create a Salesforce user profile with adequate permissions.

    If you have a Salesforce administrator account, skip the following step and directly grant access to Trend Vision One.
    :::

6.  If you have a standard Salesforce user account, you must create a Salesforce user profile with the necessary permissions to grant access.

    :::warning[Important]
    Creating the new Salesforce user profile might require administrator permissions. If so, contact a Salesforce administrator or a user with adequate permissions to continue.
    :::

    1.  Go to **Setup → Users → Profiles**.

    2.  Click **New Profile**.

    3.  Under **Existing Profile**, select **Standard User**.

    4.  Click **Edit**.

    5.  Enable the following permissions for the custom profile:

        - Apex REST Services

        - API Enabled

        - Approve Uninstalled Connected Apps

        - Customize Application

        - Manage Custom Permissions

        - Manage Salesforce CRM Content

        - Manage Users

        - Modify Metadata Through Metadata API Functions

        - Query All Files

        - View All Custom Settings

        - View All Data

        - View All Profiles

        - View All Users

        - View Event Log Files

        - View Health Check

        - View Roles and Role Hierarchy

        - View Setup and Configuration

    6.  Click **Save**.

    7.  Go back to **Setup → Users**.

    8.  Click **Edit** and select the new custom profile from the **Profile** list.

    9.  Select **Salesforce CRM Content User**.

        :::warning[Important]
        Note that if this user profile is ever deactivated in the Salesforce console, Trend Vision One can no longer synchronize Salesforce data.
        :::

7.  Click **Allow** in the **Allow Access?** window.

    <figure>
    <img src="./images/image_AllowAccess=3ea86fc5-83d5-47c7-a4b1-1a01287caa07.webp" />
    </figure>

    If permissions are successfully granted, the Salesforce tenant begins sharing data with Trend Vision One. The **Tenant name** and **Tenant ID** appear in **Workflow and Automation → Third-Party Integrations**.

    If permissions are not granted, click **Grant Permissions** to try again.

8.  To connect additional tenants, click **Add Tenant**, select a tenant type, and repeat the previous step.

9.  If you decide to prevent associated Trend Vision One apps from accessing data managed by the tenant, block the access permissions.

    1.  Click **Block permissions** in the **Status** column of the tenant.

    2.  In the confirmation window, click **Block**.

        Trend Vision One can no longer access the Salesforce data managed by the tenant.

    :::note
    Blocking permissions for an individual Salesforce tenant does not remove Trend Vision One completely from Salesforce. To remove Trend Vision One completely, search for and block the related connected app in the Salesforce console. For more information, see [Salesforce documentation](https://help.salesforce.com/s/articleView?id=sf.connected_app_manage_third_party.htm&type=5).
    :::
