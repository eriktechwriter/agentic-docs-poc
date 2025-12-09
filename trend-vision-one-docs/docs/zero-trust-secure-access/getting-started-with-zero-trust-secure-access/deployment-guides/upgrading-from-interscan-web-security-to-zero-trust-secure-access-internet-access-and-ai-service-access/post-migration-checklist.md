---
slug: trend-vision-one-post-migration-checklist
sidebar_position: 3
title: Post-Migration Checklist
---

Verify that your InterScan Web Security Virtual Appliance settings correctly migrated to Trend Vision One and direct end user internet traffic to the Internet Access Gateway.

As many InterScan Web Security Virtual Appliance settings are not directly migratable to Zero Trust Secure Access Internet Access, you should verify that your settings are correct after upgrading. For more information, see [InterScan Web Security Features and Settings Migration](./iws-features-migration).

### Procedure {#procedure}

1.  [Configure your firewall exceptions to allow ports and FQDNs required by Zero Trust Secure Access services](../../preparing-to-deploy-private-access-internet-access-and-ai-service-access-services/port-and-fqdnip-address-requirements).

2.  Check whether your Secure Access Rules require additional configuration.

    1.  Go to **Zero Trust Secure Access → Secure Access Rules** and click the **Internet Access Control** tab.

    2.  If any of the rules has an adjacent warning icon (![](/images/warning_icon=GUID-DCD5DE12-BF72-495F-8AD7-9EFFB7927E56.webp)), hover over the icon.

    3.  Follow the instructions in the tooltip.

3.  Deploy a CA certificate on your end users' browsers.

    - [Cross-sign your existing CA certificate](../../../secure-access-configuration/internet-access-and-ai-service-access-configuration/https-inspection/https-inspection-rules/cross-signing-ca-certificate).

    - [Deploy the built-in CA certificate](../../../secure-access-configuration/internet-access-and-ai-service-access-configuration/https-inspection/https-inspection-rules/deploying-built-ca-certificate).

4.  Determine how you want to direct end user internet traffic to the Internet Access Gateway.

    - [Deploy the Secure Access Module on endpoints](../setting-up-zero-trust-secure-access-private-access/secure-access-module-deployment)

    - [Forward internet traffic without the Secure Access Module](../../preparing-to-deploy-private-access-internet-access-and-ai-service-access-services/deployment-considerations/internet-access-and-ai-service-access-connecting-with-or-without-the-secure-access-module/traffic-forwarding-internet-access).
