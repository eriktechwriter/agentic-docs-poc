---
slug: trend-vision-one-email-reporting
sidebar_position: 5
title: Email reporting
---

Control whether your end users can report emails as false positives and false negatives to Trend Micro or specified administrators.

These settings apply to the email reporting function in the Add-in for Outlook and the warning banner in Correlated Intelligence of Advanced Threat Protection policies.

:::note
If your add-in is deployed before March 22, 2024, deploy the add-in again in the Microsoft 365 admin center for your users to report emails to administrators in your organization.
:::

When email reporting is turned on, Cloud Email and Collaboration Protection activates the reporting actions in the warning banner at the top of the email body. This applies to anomalous emails detected by predefined correlation rules in Correlated Intelligence.

### Procedure {#procedure}

1.  Turn on **Report to Trend Micro** to allow your users to report emails as spam, phishing, or not a risk to Trend Micro.

    :::note
    Enabling this option allows Trend Micro to collect your email metadata for further analysis and investigation.

    Reporting an email also sends a copy of the email to Trend Micro. However, this action does not move or delete the email.
    :::

    1.  Decide whether to exclude emails that match the approved header field list (configured under **Policies → Global Settings → User-Defined Lists → Approved/Blocked Lists**) from being reported to Trend Micro for analysis.

        To get visibility into the emails skipped from reporting, go to **Operations → User-Reported Emails**. For details, see [User-reported emails](../operations/user-reported-emails).

    2.  Decide whether to require manual approval on the reported emails before they can be sent to Trend Micro.

        After you enable this option, end users’ email reporting will not be sent to Trend Micro until you manually approve the reporting.

        If you disable reporting approval, the existing emails waiting for approval will be automatically approved.

        To get visibility into or manually approve the emails reported by your users, go to **Operations → User-Reported Emails**. For details, see [User-reported emails](../operations/user-reported-emails).

    3.  In the **User-reported email analysis and response** section, choose how to apply security actions to emails identified as posing similar threats based on analysis of a reported email.

        Cloud Email and Collaboration Protection automatically analyzes a user-reported email to decide whether it poses a threat and provides the analysis result as phishing, spam, or flagged emails.

        - Phishing/spam: The reported email is confirmed as phishing or spam.

        - Flagged: The reported email is not confirmed as phishing or spam, but it contains indicators that warrant further attention.

        Based on shared indicators found in the reported email, the system rescans historical emails to identify others that may present similar threats or risks. Choose to apply security actions on the identified emails automatically or manually based on the analysis result.

        Automated security actions help streamline threat response, reduce manual workload, and ensure faster containment of phishing and spam across your environment. The manual approach helps reduce false positives and ensure that the emails are truly unwanted within your organization. It also allows you to verify threats before similar emails are handled accordingly. For flagged emails, you must apply security actions manually.

        To view the analysis details and the best practice for using this feature, go to [User-reported emails](../operations/user-reported-emails).

2.  Turn on **Report to administrators** to allow your end users to report emails to the mailboxes of your organization's administrators for analysis and investigation.

3.  Specify at least one and at most 10 email addresses to report emails to.

    :::note
    To prevent reported emails from being scanned and deleted or blocked by Cloud Email and Collaboration Protection, enter email addresses in the current organization.
    :::

4.  Choose if you want to send a confirmation email to end users upon receipt of a reported email to acknowledge their feedback.

    :::note
    This option is available only when **Report to Trend Micro** or **Report to administrators** is enabled.
    :::

5.  Choose if you want to use the Trend Micro preconfigured or your own email content to display to end users.

    You can customize the subject and body of the confirmation email.

    :::note
    You can include relevant tokens and edit the message content as desired. For details about tokens, see [Token list](../policies/advanced-threat-protection/token-list).
    :::

6.  To remove reported spam or phishing emails from your end users' inbox, select **When reported as spam or phishing, move the message to the Junk folder**.
