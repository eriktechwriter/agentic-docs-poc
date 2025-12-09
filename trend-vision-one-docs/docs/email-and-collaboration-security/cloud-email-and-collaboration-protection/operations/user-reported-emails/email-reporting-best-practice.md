---
slug: trend-vision-one-email-reporting-best-practice
sidebar_position: 3
title: Best practice for user-reported email analysis and response
---

Follow this end-to-end best practice guide to effectively use the user-reported email analysis and response feature, helping security teams streamline threat triage, apply actions confidently, and strengthen email protection.

Organizations face a growing volume of email-based threats, and end users are often the last line of defense. However, without a structured process for analyzing reported emails, security teams can struggle to triage threats efficiently, leading to delayed responses and increased risk exposure. Manual investigation of each report is time-consuming and prone to oversight, especially when similar threats are already present in the environment.

Cloud Email and Collaboration Protection addresses this challenge with its user-reported email analysis and response feature. When users report suspicious emails, the system automatically analyzes the message to determine its threat type, such as phishing, spam, or flagged, and identifies shared indicators like malicious URLs or suspicious senders. It also provides a list of recent emails that share similar suspicious indicators with the reported message, allowing administrators to apply manual or automatic actions to mitigate these threats.

In addition, Cloud Email and Collaboration Protection enhances detection capabilities by learning from the reported email to help prevent recurrence. Administrators can also add relevant objects—such as sender addresses, domains, or URLs—from the reported email to monitored lists used in Correlated Intelligence policies.

By leveraging this feature, organizations empower their end users to contribute to threat detection while enabling security teams to respond faster, reduce manual workload, and proactively block future threats. The result is a more efficient and scalable email security workflow that improves visibility and containment across the organization.

### Procedure {#procedure}

1.  Set up reporting channels for your users.

    - Install the [Add-in for Outlook](../../administration/add-in-for-outlook) in your users' Outlook client to enable one-click reporting of suspicious emails, or

    - Enable the [warning banner](../../policies/advanced-threat-protection/adding-advanced-threat-protection-policies/correlated-intelligence) to display a cautionary message at the top of the email body flagged as anomalies by predefined correlation rules.

2.  Configure [email reporting](../../administration/email-reporting) settings.

    - Allow Cloud Email and Collaboration Protection to automatically analyze reported emails to reduce threat triage time.

    - Choose whether to apply manual or automatic security actions to emails identified as posing similar threats based on the analysis.

3.  Review [reported email details](.) and access the [analysis details screen](./email-reporting-analysis-details) to view classification, suspicious indicators, email metadata.

4.  [Monitor the automated mitigation and prevention actions](./email-reporting-analysis-details).

    - If [automated security actions](../../administration/email-reporting) are enabled, the system automatically takes action on similar historical emails and apply prevention measures.

    - Use the progress bar to track real-time status updates.

5.  Apply security actions manually.

    If [manual security actions](../../administration/email-reporting) are enabled, use the [analysis details screen](./email-reporting-analysis-details) screen to take manual steps:

    1.  Examine the reported email, view its classification, and understand why the email was considered suspicious through top indicators.

    2.  In the **Mitigation actions** section, apply recommended actions to similar emails individually or in batches.

    3.  In the **Remediation and prevention** section, add the most relevant object to the corresponding monitored list managed by Correlated Intelligence.

        This operation automatically creates a detection signal for this object type on the **Detection Signals** tab under **Policies → Global Settings → Correlated Intelligence → Correlation Rules and Detection Signals**, named **Monitored \<object type\> from User-Reported Emails**.

        These signals contribute to a system-generated correlation rule **User-Report Driven Threat Detection**, which helps detect other emails containing the same monitored object.

        In the signal details screen, you can find all the objects you add in the analysis details screen and manage them as desired.

    4.  To proactively block similar threats and risks, go to your **Advance Threat Protection** policy settings and add **User-Report Driven Threat Detection** as a custom rule under **Correlated Intelligence**.
