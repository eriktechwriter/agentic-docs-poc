---
slug: trend-vision-one-getting-started-mobile-security
title: Get started with Mobile Security
---

Complete the initial setup to start using **Mobile Security**.

Before using the features of **Mobile Security**, you need to establish initial configuration and enroll devices using the Trend Vision One console.

### Procedure {#procedure}

1.  Determine whether your organization is currently utilizing a supported Mobile Device Management (MDM) solution for managing mobile devices.

    - If yes, enhance the device security management by integrating **Mobile Security** with your existing MDM solution. This allows **Mobile Security** to discover MDM-enrolled devices and deploy the Mobile Security for Business to them.

      - [Microsoft Endpoint Manager (Intune) integration](mem-intune-integration.md)

      - [VMware Workspace ONE UEM integration](vmware-workspace-one-uem.md)

      - [Google Workspace integration](google-workspace-integration.md)

      - [Integration with other MDMs through managed configuration](enroll-devices-managed-config.md)

    - If no, simplify and consolidate device management and security protection into a single solution by implementing Mobile Device Director. For details, see [Mobile Device Director setup](mobile-device-director-setup.md).

    - If no and you want to utilize only the security protection functions in Mobile Security, integrate with Microsoft Entra ID. Be aware that this will bypass some advanced security features, with no change in the credits required per device. For details, see [Microsoft Entra ID integration](integration-trend-vision.md).

2.  Install the Mobile Security for Business app on [supported devices](system-requirements-mobile.md).

    - For supported MDM solutions, [send device assignments](mobile-inventory.md).

      :::note
      Skip this step in the following scenarios because the app has been deployed to users' devices during the integration with the MDM.

      - When your MDM is integrated through managed configuration

      - When you use Google Workspace and need to enroll Android and iOS/iPadOS devices
      :::

      The users get the Mobile Security for Business app deployed automatically on their devices by utilizing the app management capabilities within the MDM solution.

    - For Mobile Device Director, [send enrollment invitations to users](setting-up-mobile-device-director.md).

      The users get the Mobile Security for Business app deployed automatically on their devices when they manually enroll through scanning the enrollment QR code.

    - For Microsoft Entra ID, [send enrollment invitations to users](mobile-inventory.md).

      The users manually download and install the Mobile Security for Business app from App Store or Google Play Store.

    :::warning[Important]
    Once the Mobile Security for Business app is deployed successfully, credits are automatically allocated to **Mobile Security**. The required number of credits per device remains consistent regardless of the deployment method selected.

    [Learn more about Trend Vision One credits](introducing-credit-based-licensing.md)
    :::

3.  Set up [mobile compliance policies](mobile-compliance-policies.md) and [mobile security policies](mobile-security-policies.md) to protect enrolled devices.

    :::note
    *Mobile compliance policies* referenced in this document are specific to the features offered by Mobile Device Director, and do not apply to device compliance within the integrated MDM solution. If you choose to integrate with your MDM solution, you will not be able to establish *Mobile compliance policies* in **Mobile Security**. Instead, utilize device compliance management provided by the MDM solution.

    *Mobile security policies* are consistently available across all deployment methods, despite slight differences.
    :::

4.  Check the [Mobile Security for Business app status](devices-tab.md) to ensure that all devices are up-to-date.

**Related information**

- [Mobile Security device platform features](mobile-security-platform-features.md)
- [System requirements](system-requirements-mobile.md "Mobile Security is compatible with Android, iOS/iPadOS, and ChromeOS operating systems. Find system requirements for each operating system below.")
- [Resource consumption](resource-consumption.md "Learn about the performance and resource consumption benchmarks of Mobile Security.")
- [Microsoft Endpoint Manager (Intune) integration](mem-intune-integration.md "Perform the integration to discover Microsoft Intune-enrolled mobile devices and deploy the Mobile Security for Business to the devices for increased visibility and management.")
- [VMware Workspace ONE UEM integration](vmware-workspace-one-uem.md "Perform the integration to discover VMware Workspace ONE UEM-enrolled mobile devices and deploy the Mobile Security for Business to the devices for increased visibility and management.")
- [Google Workspace integration](google-workspace-integration.md "Integrate Google Workspace with Mobile Security and deploy the Mobile Security for Business app to get increased visibility into your managed mobile devices.")
- [Integration with other MDMs through managed configuration](enroll-devices-managed-config.md "Mobile Security allows you to enroll devices managed by any MDM solution that supports managed configuration.")
- [Mobile Device Director setup](mobile-device-director-setup.md "Set up Mobile Device Director to streamline device management, compliance check, mobile security, and data protection in a single solution.")
- [Microsoft Entra ID integration](integration-trend-vision.md "Perform the integration to enable end users to authenticate with Microsoft Entra ID during mobile device enrollment.")
- [Change the Mobile Security deployment method](changing-deployment-method.md "Adjust the Mobile Security deployment method to suit your organization's latest IT infrastructure.")
- [Enable Zero Trust Secure Access on managed mobile devices](enabling-ztsa-mobile-devices.md "Use Zero Trust Secure Access features to control web and private resource access on compatible managed mobile devices.")
