---
slug: trend-vision-one-servicenow-cmdb-integration
sidebar_position: 43
title: ServiceNow CMDB integration
---

Gain increased visibility into the relationships between and attributes of your devices by integrating ServiceNow CMDB with Trend Vision One.

:::warning[Important]
This is a "Pre-release" feature and is not considered an official release. Please review the [Pre-release disclaimer](../../privacy-and-personal-data-collection-disclosure/pre-release-disclaimer) before using the feature.
:::

The Cyber Risk Exposure Management for ServiceNow CMDB integration gives you access to your device information, including attributes and relationships, and device web activity logs within Trend Vision One to provide actionable risk insights. To integrate ServiceNow CMDB data, you must configure the integration in the ServiceNow console.

:::note
The following instructions were valid as of October 20, 2025.
:::

To configure the ServiceNow CMDB integration, you need:

- The [Trend Vision One connector](https://store.servicenow.com/store/app/7bd8272e1be06a50a85b16db234bcbf7) from the SevriceNow store

- A dedicated web service access-only ServiceNow service account with the following roles:

  - cmdb_read

  - snc_platform_rest_api_access

- The configured basic authentication profile sys ID for the service account. To learn how to configure a basic authentication profile in ServiceNow, see the [ServiceNow documentation](https://www.servicenow.com/docs/bundle/yokohama-api-reference/page/integrate/outbound-rest/task/t_CreateABasicAuthProfile.md).

### Procedure {#procedure}

1.  In the Trend Vision One console, go to **Workflow and Automation → Third-Party Integrations** and select ServiceNow CMDB.

2.  Generate, copy, and save the authentication token.

3.  Use the authentication token copied from the Trend Vision One to configure the integration in the ServiceNow console.

    1.  Find and copy the authentication profile sys ID for the service account to be used for the integration.

        :::tip
        Type `sys_auth_profile_basic.list` into the ServiceNow console filter navigator to find the authentication profile you configured for the integration. Select the profile, right-click the header, and select **Copy sys_id** to copy the sys ID.

        ![The ServiceNow console Basic Auth Configurations table](/images/ServiceNowCMDB_basicAuthProfile=a406c9ab-c51f-422a-817f-c92eb656e9cc.webp) ![The ServiceNow context menu for copying the basic authentication profile sys ID](/images/ServiceNowCMDB_copySysID=1f102d06-a6e4-4b33-a004-46d4e1c13a90.webp)
        :::

    2.  In the filter navigator, type **Trend Vision One Connector** and go to **Properties**.

    3.  Add the Trend Vision One API endpoint URL (`api-xdr.visionone.trendmicro.com`) if not already configured.

        ![The Trend Vision One API URL field in the ServiceNow Trend Vision One API settings](/images/ServiceNowCMDB_APIsettings=dd5ac6a3-7d95-49b7-a75d-eccb97714497.webp)

    4.  In the CMDB settings, add the Trend Vision One API authentication token you previously copied.

        ![The ServiceNow CMDB settings for the Trend Vision One ServiceNow connector](/images/ServiceNowCMDB_CMDBsettings=7d5e2926-69dc-4435-bc0e-bb4c7cb171c7.webp)

    5.  Add the sys ID of the authentication profile of the service account to be used with the integration.

    6.  Enable CMDB integration.

    7.  Click **Save**.

4.  Check the data sync status in **Data Source and Log Management**. If the authentication token has expired, generate a new token and reconfigure the intergation in the ServiceNow console.
