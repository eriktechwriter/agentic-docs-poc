---
slug: trend-vision-one-secure-access-module-restr-envir
sidebar_position: 3
title: Deploy Zero Trust Secure Access Module in restricted environment
---

In a restricted network environment, direct internet access is blocked. Users can only access the internet via a proxy or a Service Gateway.

The Zero Trust Secure Access Module supports connecting to Trend Vision One through either a proxy or a Service Gateway with Forward Proxy Service enabled.

The Zero Trust Secure Access Module uses the proxy or Service Gateway for management traffic, including:

- Fetch configurations, the PAC file, and updates from Trend Vision One
- Sign in to Trend Vision One. (excluding [NTLM single sign-on for Internet Access](./setting-up-zero-trust-secure-access-internet-access-and-ai-service-access/identity-and-access-management-integration/active-directory-on-premises-integration-and-sso-for-zero-trust-secure-access/ntlm-single-sign-internet-access))
- Other communications with Trend Vision One.

:::warning[Important]
This feature is supported only on Windows and requires Zero Trust Secure Access Module version 2.22 or later
:::

### Procedure {#procedure}

1.  Go to **Endpoint Security → Endpoint Inventory**, and click the Global Settings icon (![](/images/GlobalIcon=fe43d299-b89c-45f5-82c5-59e9fd507d9f.webp)).

2.  Go to **Agent Installer Proxy** and configure your proxy settings for **Sensor only** agents.

    For more information, see [Agent Installer Proxy Settings](../../../endpoint-security/endpoint-inventory/global-settings/agent-installer-proxy-settings).

3.  Go to **Endpoint Security → Endpoint Inventory**, and click the Global Settings icon, (![](/images/GlobalIcon=fe43d299-b89c-45f5-82c5-59e9fd507d9f.webp)).

4.  Go to **Runtime Proxy Settings** and configure your proxy settings in **Sensor Policy**.

    For more information, see [Runtime Proxy Settings](../../../endpoint-security/endpoint-inventory/global-settings/runtime-proxy-settings).

    :::warning[Important]
    Do not add a Zero Trust Internet Access On-Premises Gateway or Cloud Gateway to Primary Custom Proxy Settings in Runtime Proxy Settings. Zero Trust Internet Access On-Premises Gateway is exclusively for Zero Trust Internet Access and should not be used as a general proxy server. To use your existing Service Gateway as a general proxy server, install the Forward Proxy Service on your Service Gateway.

    For more information, see [Service Gateway services](../../../workflow-and-automation/service-gateway-management/service-gateway-appliance-configuration/manage-services-in-service-gateway/service-gateway-services) .
    :::

    :::note
    To use a Service Gateway for traffic forwarding, refer to [Getting started with Service Gateway](../../../workflow-and-automation/service-gateway-management/getting-started-with-service-gateway) to deploy a Service Gateway with Forward Proxy Service enabled.
    :::

5.  To allow access to all services if you are using a Service Gateway:

    1.  Go to **Workflow and Automation → Service Gateway Management** and select the name of the Service Gateway appliance with Forward Proxy Service installed.

    2.  In the Installed Services list, locate Forward Proxy Service and click the Configure icon, (![](/images/GlobalIcon=fe43d299-b89c-45f5-82c5-59e9fd507d9f.webp)).

    3.  In the **Forward Proxy Service** panel, click the **Advanced** tab and chooise one of the following options:

        - Allow access to all services (recommended)
        - Allow access to specified services

    4.  If you select **Allow access to specified services**, add the [required FQDN or IP address](../preparing-to-deploy-private-access-internet-access-and-ai-service-access-services/port-and-fqdnip-address-requirements) to **Allowed Service Setting**.

    For more information, see [Forward Proxy Service](../../../workflow-and-automation/service-gateway-management/service-gateway-appliance-configuration/manage-services-in-service-gateway/forward-proxy-service).

6.  Go to **Zero Trust Secure Access → Secure Access Configuration → Internet Access and AI Service Access Configuration → PAC Files** and click the edit icon.

7.  Switch to **Advanced mode** and delete all entries in the `SkipHost` list, as shown below.

    ``` codeblock
    function FindProxyForURL(url, host) {
        .....
        var SkipHosts = [];
        .....
    }
    ```

    For more information, see [PAC file configuration](./setting-up-zero-trust-secure-access-internet-access-and-ai-service-access/pac-file-configuration).

8.  Go to **Zero Trust Secure Access → Secure Access Configuration → Secure Access Module** and click **Module Version Management** and ensure the Window version is set to 2.22 or later..

9.  Click **Download the Agent Installer** and download the installation package.

10. Run the installation package on your target endpoints to install the Endpoint Sensor agent and the Zero Trust Secure Access Module.
