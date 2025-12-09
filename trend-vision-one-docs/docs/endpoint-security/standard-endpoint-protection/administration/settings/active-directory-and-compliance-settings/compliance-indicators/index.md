---
slug: trend-vision-one-compliance-indicators-saas
sidebar_position: 1
title: Compliance Indicators
---

Trend Micro Apex Central includes the following compliance indicators and performs compliance calculations based on the indicator settings and the user and endpoint information synchronized from Active Directory servers. You can view the information for the compliance indicators on the **Security Posture** dashboard tab.

- **Antivirus Pattern Compliance**: The percentage of managed Apex One Trend Vision One Endpoint Security agents using acceptable antivirus pattern (Virus Pattern and Smart Scan Agent Pattern) versions

- **Data Loss Prevention Compliance**: The percentage of managed Data Discovery-enabled Apex One and Cloud App Security agents with an acceptable number of sensitive data detection incidents

The following provides an overview of the procedures to get Trend Micro Apex Central to perform compliance calculations and display compliance information on the **Security Posture** dashboard tab.

### Procedure {#procedure}

1.  Connect to an Active Directory server to synchronize the user and endpoint information.

    For more information, see [Configuring Active Directory Synchronization](../active-directory-integration/configuring-synch-ad).

2.  Configure the compliance indicator settings.

    For more information, see the following topics:

    - [Configuring the Antivirus Pattern Compliance Indicators](./antivirus-pattern-compliance)

    - [Configuring the Data Loss Prevention Compliance Indicator](./config-dlp-compliance-indicator)

3.  (Optional) Customize endpoint and user grouping based on Active Directory sites and reporting lines.

    For more information, see [Endpoint and User Grouping](../endpoint-and-user-grouping).

4.  Go to the **Dashboard** to view the compliance information.

    :::note
    To change the Active Directory grouping or view the Data Discovery compliance of your managed agents, configure the **Security Posture** tab settings.

    For more information, see the following topics:

    - [Security Posture Tab](../../../../about-the-dashboard/default-dashboard-tabs-and-widgets/security-posture-tab)

    - [Working with Widgets](../../../../about-the-dashboard/tabs-and-widgets/working-widgets)
    :::

**Related information**

- [Configuring the Antivirus Pattern Compliance Indicators](./antivirus-pattern-compliance)
- [Configuring the Data Loss Prevention Compliance Indicator](./config-dlp-compliance-indicator)
