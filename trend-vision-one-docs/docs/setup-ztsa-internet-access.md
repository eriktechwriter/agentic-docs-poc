---
slug: trend-vision-one-setup-ztsa-internet-access
title: Setting up Zero Trust Secure Access Internet Access and AI Service Access
---

Prepare your environment to use Internet Access and AI Service Access with Secure Access Modules or internet proxies.

Zero Trust Secure Access Internet Access requires that you set up your environment before creating rules that control user and device access.

The following lists out the high-level overview of the steps involved in setting up your Zero Trust Internet Access environment.

1.  [Integrate your identity and access management (IAM) system](ia-management-integration.md) or add [local user accounts](local-user-account-management.md).

2.  [Identify your corporate network locations.](identify-corporate-network.md)

3.  Choose how your end users and devices send traffic to the Internet Access Gateway.

    - [Deploy the Secure Access Module](secure-access-module-deployment.md) to secure end user access through managed devices.

      :::note
      Internet Access authenticates users by requiring users to sign in to the Secure Access Module before forwarding internet traffic to the Internet Access Gateway.
      :::

    - [Configure PAC files](pac-file-configuration.md) to use for traffic forwarding.

      :::note
      Internet Access authenticates users by requiring users to sign in on a page that displays when they open a website in a browser.
      :::

**Related information**

- [Identity and access management integration](ia-management-integration.md "Integrate a supported IAM system with Zero Trust Secure Access and grant the required permissions.")
- [Identifying corporate network locations](identify-corporate-network.md "Define your corporate networks on the Internet Access Cloud Gateway or through Internet Access On-Premises Gateways to identify your internal users and apply more granular Secure Access Rules.")
- [Secure Access Module deployment](secure-access-module-deploy.md)
- [PAC file configuration](pac-file-configuration.md "Add domains to your existing PAC files to bypass proxy handling, or add new custom PAC files.")
- [PAC file deployment](pac-file-deployment.md "Approaches to configure proxy settings by applying an existing PAC file to the Secure Access Module or the system settings.")
