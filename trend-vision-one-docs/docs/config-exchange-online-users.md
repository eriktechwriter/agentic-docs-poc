---
slug: trend-vision-one-config-exchange-online-users
title: Configuring approved Exchange Online users
---

Specify the Exchange Online users on whose emails will be excluded from scanning when those users are selected as policy targets.

### Procedure {#procedure}

1.  Go to **Policies → Global Settings → User-Defined Lists → Approved/Blocked Lists**, click **Exchange Online**, and locate the **Approved Users** section.

2.  Perform the following tasks:

    - Add one or multiple users to the approved users list.

      1.  Click **+ Add**.

      2.  On the **Add Approved Users** screen that appears, select **Advanced Threat Protection** or **Data Loss Prevention** from the **Policy Type** drop-down list. This determines which type of policies the specified users apply to.

      3.  Search and select one or multiple users to add as approved users.

          :::note
          A maximum of 1,024 users can be added.

          The added users apply to the policies of the specified type for all organizations.
          :::

      4.  Click **OK**.

    - Remove one or multiple users from the approved users list.

      1.  Select one or multiple users and click **Delete**.
