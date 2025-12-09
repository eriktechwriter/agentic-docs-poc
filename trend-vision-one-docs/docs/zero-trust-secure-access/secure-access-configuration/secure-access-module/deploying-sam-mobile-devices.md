---
slug: trend-vision-one-deploying-sam-mobile-devices
sidebar_position: 3
title: Enabling Zero Trust Secure Access on mobile devices
---

Use Zero Trust Secure Access features to control web and private resource access on compatible managed mobile devices.

For mobile devices running [supported operating systems](../../getting-started-with-zero-trust-secure-access/preparing-to-deploy-private-access-internet-access-and-ai-service-access-services/system-requirements/secure-access-module-sys-reqs), Zero Trust Secure Access services are enabled through a configured Mobile Agent. To deploy the Mobile Agent to end user devices, you must first integrate an MDM solution with Mobile Security. Supported third-party MDM solutions include:

- [Microsoft Intune](../../../mobile-security/get-started-with-mobile-security/microsoft-endpoint-manager-intune-integration/set-up-microsoft-endpoint-manager-intune-integration)

- [Google Workspace](../../../mobile-security/get-started-with-mobile-security/google-workspace-integration)

You may also set up [Mobile Device Director](../../../mobile-security/get-started-with-mobile-security/mobile-device-director-setup) as your MDM solution and use it directly from the Trend Vision One console.

:::note
Trend Micro has comprehensively tested the above MDM solutions. However, it is possible to use any MDM solution that supports device enrollment [using managed configuration](../../../mobile-security/get-started-with-mobile-security/integration-with-other-mdms-through-managed-configuration) and allows deployment of mobile VPN profiles and gateway certificates, including [VMWare Workspace ONE UEM](../../../mobile-security/get-started-with-mobile-security/vmware-workspace-one-uem-integration) and Ivanti (Mobileiron).
:::

### Procedure {#procedure}

1.  On the Trend Vision One console, go to **Zero Trust Secure Access → Secure Access Configuration → Secure Access Module**, and select **Mobile Devices**.

2.  Click **Deploy Mobile Agent** to go to the **Groups** tab in [Mobile Inventory](../../../mobile-security/use-mobile-security-with-mdm-solutions-or-microsoft-entra-id/mobile-inventory).

3.  After ensuring the **View** menu displays your integrated MDM solution, click **Add Assignments**.

4.  Type the names of one or more groups or organizational units as defined in your integrated MDM solution.

    The group appears in the **Groups** tab in **Mobile Inventory** as well as in the **Mobile Devices** tab in **Zero Trust Secure Access → Secure Access Configuration → Secure Access Module**. The Mobile Agent deploys to all mobile devices in the group.

5.  Instruct end users to open the Mobile Security app on group devices in order to complete device enrollment.

    The selected mobile devices are now enrolled in Mobile Security and are capable of enabling Zero Trust Secure Access services.

    :::note
    If using a third-party MDM solution other than Microsoft Intune, you may need to [deploy a VPN profile](../../../mobile-security/get-started-with-mobile-security/enable-zero-trust-secure-access-on-managed-mobile-devices/vpn-profile-devices-managed-config) and [Internet Access gateway certificates](../../../mobile-security/get-started-with-mobile-security/enable-zero-trust-secure-access-on-managed-mobile-devices/deploying-ztsa-certificates) to your end-user devices in order to enable Zero Trust Secure Access services.
    :::

6.  Ensure [Private Access](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-private-access) and [Internet Access](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-internet-access-and-ai-service-access) services are provisioned and configured in **Zero Trust Secure Access**.

7.  Go to **Zero Trust Secure Access → Secure Access Configuration → Secure Access Module → Mobile Devices** and select one or more device groups.

8.  Using the dropdown menus, select whether to enable Private Access, Internet Access, or both services.

    You may view the service configuration status for the device groups from the **Mobile Devices** tab.
