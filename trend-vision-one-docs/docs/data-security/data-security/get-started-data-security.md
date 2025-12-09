---
slug: trend-vision-one-get-started-data-security
sidebar_position: 2
title: Get started with Data Security
---

The steps below summarize how to set up Data Security.

1.  Access your Trend Vision One console and make sure you have updated to the Foundation Services release.

    For more information, see [Update Trend Vision One to the Foundation Services release](../../getting-started/getting-started-with-trend-vision-one/update-trend-vision-one-to-the-foundation-services-release).

2.  Create data policies to specify the network locations that you consider sensitive data sources.

    For more information, see [Add a data policy](./data-policy/add-data-policy).

3.  Deploy and enable sensors on the endpoints in the network locations specified in a data policy. To do this, create or update an Endpoint Security policy, and ensure the following options are enabled:

    - **Endpoint sensor detection and response**. This option sends activity data to Trend Vision One for threat detection and alerts.

      :::note
      This feature requires credits.
      :::

    - **Data Detection and Response**. This option sends activity data to trace the movement of policy-defined sensitive data. This option appears when you enable **Endpoint sensor detection and response**.

    For more information, see [Configure endpoint security policies](../../endpoint-security/endpoint-security-configuration/endpoint-security-policies/configuring-endpoint-policies).

4.  Create data policies to specify the network locations that you consider sensitive data sources.

    For more information, see [Add a data policy](./data-policy/add-data-policy).

5.  Enable Data Security Posture on the cloud accounts you want to monitor for sensitive data.

    - To enable Data Security Posture on AWS accounts, see [AWS features and permissions](../../cloud-security/cloud-accounts/aws-accounts/aws-features-and-permissions).

    - To enable Data Security Posture on Azure subscriptions, see [Azure features and permissions](../../cloud-security/cloud-accounts/azure-subscriptions/azure-features-and-permissions).
