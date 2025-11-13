---
slug: trend-vision-one-notifications-workbench-alerts
title: Configuring notifications for new Workbench alert
---

Send Trend Vision One notifications about new workbench alerts by configuring email, webhook, and mobile app account lists.

### Procedure {#procedure}

1.  In the Trend Vision One console, go to **Administration → Notifications**.

2.  Click **New Workbench alert** to edit the notification settings.

3.  Configure the recipients for the notification.

    :::note
    Recently created Trend Vision One account might not immediately appear as an available recipient.

    To configure a recipient group, click **Settings → Recipient group list** in the main Notifications list view.
    :::

    1.  To send notifications by email, click the **Email** tab and specify email addresses, Trend Vision one accounts, or email groups to receive the notification.

        To send a test email, click **Send Test Message**. You can specify whether to **Send only to newly added recipients** or **Send to all recipients**.

    2.  To send notifications by webhook, click the **Webhook** tab and specify which webhooks or webhook groups to receive the notification.

        If your webhook is not listed, create a new webhook connection by [managing webhooks](managing-webhooks.md) in the **Webhook List**.

    3.  To send notifications to users by the Trend Vision One mobile app, click the **Mobile** tab and specify the Trend Vision One user accounts or mobile groups to receive the notification.

        To send an installation link for the mobile app, click **Send Mobile App Installation Link**. You can specify whether to **Send only to newly added accounts** or **Send to all accounts**.

    :::note
    The following steps apply to each notification type. Repeat the steps as needed to configure your email, webhook, and mobile notification settings.
    :::

4.  If you want to notify groups of recipients of specific alerts based on severity, enable **Notify recipients based on alert severity** and configure the settings.

    :::note
    You must have at least one recipient for the notification method before you can select a recipient group.

    Recipients not assigned to a group added to the **Notify recipients based on alert severity** list receive all notifications.
    :::

    1.  To add a group, click **Add Group**.

    2.  Select a group.

    3.  Select the alert severity for the group.

        Recipients only receive alerts for the selected alert severity. If you only select **Low**, the group does not receive higher severity alerts. You can select the following severity levels:

        - **Critical**

        - **High**

        - **Medium**

        - **Low**

5.  To send notifications that include detailed scope information, enable **Expanded impact scope details**.

    :::warning[Important]
    Expanded details might contain sensitive information about your environment. Add only trusted recipients or webhook channels with appropriate permissions to the recipient list.
    :::

6.  To send notifications that include highlighted objects associated with the alert, enable **Include highlighted objects**. The notification only displays the first 10 highlighted objects, ordered by alert severity.

    :::warning[Important]
    Highlighted objects might contain sensitive information about your environment. Add only trusted recipients or webhook channels with appropriate permissions to the recipient list.
    :::

7.  To prevent a large volume of low severity alert notifications, enable **Aggregate low severity alert notifications hourly**.

    For low severity alerts, notifications are aggregated hourly due to their high volume. For alerts of higher severity, an individual notification is sent for each alert as it is triggered.

8.  Click **Save**.
