---
slug: trend-vision-one-getting-started-mobile-security
sidebar_position: 1
title: Get started with Mobile Security
---

Complete the initial setup to start using **Mobile Security**.

Before using the features of **Mobile Security**, you need to establish initial configuration and enroll devices using the Trend Vision One console.

### Procedure {#procedure}

1.  Determine whether your organization is currently utilizing a supported Mobile Device Management (MDM) solution for managing mobile devices.

    - If yes, enhance the device security management by integrating **Mobile Security** with your existing MDM solution. This allows **Mobile Security** to discover MDM-enrolled devices and deploy the Mobile Security for Business to them.

      - [Microsoft Endpoint Manager (Intune) integration](./microsoft-endpoint-manager-intune-integration)

      - [VMware Workspace ONE UEM integration](./vmware-workspace-one-uem-integration)

      - [Google Workspace integration](./google-workspace-integration)

      - [Integration with other MDMs through managed configuration](./integration-with-other-mdms-through-managed-configuration)

    - If no, simplify and consolidate device management and security protection into a single solution by implementing Mobile Device Director. For details, see [Mobile Device Director setup](./mobile-device-director-setup).

    - If no and you want to utilize only the security protection functions in Mobile Security, integrate with Microsoft Entra ID. Be aware that this will bypass some advanced security features, with no change in the credits required per device. For details, see [Microsoft Entra ID integration](./microsoft-entra-id-integration).

2.  Install the Mobile Security for Business app on [supported devices](./system-requirements).

    - For supported MDM solutions, [send device assignments](../use-mobile-security-with-mdm-solutions-or-microsoft-entra-id/mobile-inventory).

      :::note
      Skip this step in the following scenarios because the app has been deployed to users' devices during the integration with the MDM.

      - When your MDM is integrated through managed configuration

      - When you use Google Workspace and need to enroll Android and iOS/iPadOS devices
      :::

      The users get the Mobile Security for Business app deployed automatically on their devices by utilizing the app management capabilities within the MDM solution.

    - For Mobile Device Director, [send enrollment invitations to users](./mobile-device-director-setup/set-up-mobile-device-director).

      The users get the Mobile Security for Business app deployed automatically on their devices when they manually enroll through scanning the enrollment QR code.

    - For Microsoft Entra ID, [send enrollment invitations to users](../use-mobile-security-with-mdm-solutions-or-microsoft-entra-id/mobile-inventory).

      The users manually download and install the Mobile Security for Business app from App Store or Google Play Store.

    :::warning[Important]
    Once the Mobile Security for Business app is deployed successfully, credits are automatically allocated to **Mobile Security**. The required number of credits per device remains consistent regardless of the deployment method selected.

    [Learn more about Trend Vision One credits](../../administration/credits-billing/annual-credits/introduction-to-credit-based-licensing)
    :::

3.  Set up [mobile compliance policies](../use-mobile-device-director/mobile-compliance-policies) and [mobile security policies](../use-mobile-device-director/mobile-security-policies) to protect enrolled devices.

    :::note
    *Mobile compliance policies* referenced in this document are specific to the features offered by Mobile Device Director, and do not apply to device compliance within the integrated MDM solution. If you choose to integrate with your MDM solution, you will not be able to establish *Mobile compliance policies* in **Mobile Security**. Instead, utilize device compliance management provided by the MDM solution.

    *Mobile security policies* are consistently available across all deployment methods, despite slight differences.
    :::

4.  Check the [Mobile Security for Business app status](../use-mobile-security-with-mdm-solutions-or-microsoft-entra-id/mobile-inventory/devices-tab) to ensure that all devices are up-to-date.

**Related information**

- [Mobile Security device platform features](./mobile-security-platform-features)
- [System requirements](./system-requirements "Mobile Security is compatible with Android, iOS/iPadOS, and ChromeOS operating systems. Find system requirements for each operating system below.")
- [Resource consumption](./resource-consumption "Learn about the performance and resource consumption benchmarks of Mobile Security.")
- [Microsoft Endpoint Manager (Intune) integration](./microsoft-endpoint-manager-intune-integration "Perform the integration to discover Microsoft Intune-enrolled mobile devices and deploy the Mobile Security for Business to the devices for increased visibility and management.")
- [VMware Workspace ONE UEM integration](./vmware-workspace-one-uem-integration "Perform the integration to discover VMware Workspace ONE UEM-enrolled mobile devices and deploy the Mobile Security for Business to the devices for increased visibility and management.")
- [Google Workspace integration](./google-workspace-integration "Integrate Google Workspace with Mobile Security and deploy the Mobile Security for Business app to get increased visibility into your managed mobile devices.")
- [Integration with other MDMs through managed configuration](./integration-with-other-mdms-through-managed-configuration "Mobile Security allows you to enroll devices managed by any MDM solution that supports managed configuration.")
- [Mobile Device Director setup](./mobile-device-director-setup "Set up Mobile Device Director to streamline device management, compliance check, mobile security, and data protection in a single solution.")
- [Microsoft Entra ID integration](./microsoft-entra-id-integration "Perform the integration to enable end users to authenticate with Microsoft Entra ID during mobile device enrollment.")
- [Change the Mobile Security deployment method](./changing-deployment-method "Adjust the Mobile Security deployment method to suit your organization's latest IT infrastructure.")
- [Enable Zero Trust Secure Access on managed mobile devices](./enable-zero-trust-secure-access-on-managed-mobile-devices "Use Zero Trust Secure Access features to control web and private resource access on compatible managed mobile devices.")
