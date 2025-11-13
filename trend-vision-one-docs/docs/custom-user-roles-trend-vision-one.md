---
slug: trend-vision-one-custom-user-roles-trend-vision-one
title: Configure custom user roles
---

Add or edit a custom user role to grant custom app permissions and scope to Trend Vision One user accounts.

### Before you begin {#before-you-begin}

### Procedure {#procedure}

1.  Go to **Administration → User Roles**.

2.  To add a new custom user role, click **+ Add role**.

    The **Create custom role** window appears.

    :::note
    To view only custom user roles, select **Role type: → Custom**. You cannot add or edit a *predefined role*.
    :::

3.  Under **General information**, specify the role name, description, and control flag settings to determine whether the role can be assigned to API keys, user accounts, or both.

4.  :::danger[Warning]
    Granting Master Administrator in combination with other permissions can be risky. Be cautious granting Master Administrator to a custom user role with:

    - permission to configure user roles and the control flag allowing it to be assigned to user accounts

    - permission to configure accounts
    :::

    :::note
    As of October 27, 2025, the Master Administrator level permission cannot be assigned to API keys. API keys granted Master Administrator before that date retain their permission, but it is recommended that they be assigned a different role since Master Admin level API keys could be used to make user accounts changes.
    :::

5.  Under **Permissions**, select permissions to grant to the role.

    :::note
    Some apps require selecting the **Read-only** or **Full access** permission before selecting other permissions.

    If you only select some permissions for a solution, the selected permission changes to **Partial access**.
    :::

6.  On the **Data and app assets** tab, select an [asset visibility scope](asset-visibility-management.md) or create a new scope for each Trend Vision One app.

7.  Click **Save**.
