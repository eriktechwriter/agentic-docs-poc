---
slug: trend-vision-one-enabled-regions-2
sidebar_position: 4
title: Compliance scan enabled regions
---

The Compliance scan is set to *ON* for all regions by default, however there is the option to disable bot runs at the region level. On disabling the bot in a region, notifications will not be received for new failures in that particular region and all checks for the region will be removed from the application. However, [Real-time threat monitoring](../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/monitoring-real-time-posture/real-time-posture-monitoring/real-time-threat-monitoring) will continue to monitor the region for any risks and security issues.

:::note
Once a region is disabled, a bot run has to be made for changes to take effect. We do not recommend disabling regions.
:::

### Disable regions {#disable-regions}

1.  To disable, turn the toggle *OFF* for the required region and click **Update bot settings**.

2.  Once disabled, the status of the region will be displayed on both:

    1.  [Compliance scan settings page](../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/compliance-scan-help/configuring-compliance-scan/settings-cloud-posture)

    2.  [Settings page](../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/manage-cloud-accounts/account-settings/cloud-acct-cloud-posture)

        *Scanning Resources for Disabled Regions*

        Compliance scan does not scan resources for the disabled regions.

        *US East (N. Virginia) Region*

        Partial scanning will still happen even if a region is disabled as it is the parent or default region for global services. A new warning message is displayed for partial scanning. For example, When us-east-1 (N. Virginia) region is disabled, the following warning message will be displayed:

        :::danger[Warning]
        Partial scanning will occur for region US East (N. Virginia) as global services are hosted in this region that applies to all regions of AWS infrastructure\_
        :::

        *Global Service Regions* An additional warning message informing customers about partial scanning for global service regions is also displayed even if the region is disabled for scanning.

        *IAM Resources* Compliance scan will still scan IAM resources since IAM is a global service i.e. applies to all regions of AWS infrastructure.
