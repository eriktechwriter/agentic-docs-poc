---
slug: trend-vision-one-ad-onprem-sso-ztsa
sidebar_position: 4
title: Integrating Active Directory (On-Premises) and SSO for Zero Trust Secure Access
---

Integrate with Active Directory (on-premises) to authenticate user access attempts and take action on risky account activity.

Active Directory (on-premises) integration requires the use of a Service Gateway, third-party integration settings, and SSO.

### Procedure {#procedure}

1.  Prepare a [VMware ESXi](../../../../../workflow-and-automation/service-gateway-management/getting-started-with-service-gateway/deployment-guides/sg-virtual-app-vmware-esxi) or [Microsoft Hyper-V](../../../../../workflow-and-automation/service-gateway-management/getting-started-with-service-gateway/deployment-guides/deploy-virtual-appliance-ms-hyper-v) Service Gateway appliance that connects to your on-premises Active Directory server.

2.  Go to **Zero Trust Secure Access → Secure Access Configuration → Identity and Access Management**.

3.  Click **Grant permissions** next to **Active Directory (on-premises)**.

    A new browser tab opens to the **Third-Party Integration \> Active Directory (on-premises)** screen.

4.  Connect your Active Directory server to Trend Vision One by [configuring Active Directory (on-premises) integration](../../../../../workflow-and-automation/third-party-integrations/active-directory-on-premises-integration).

5.  Configure SSO based on the authentication protocol that your on-premises Active Directory system supports.

    - SAML-based SSO: [Configure Active Directory Federation Services](../../../../../administration/identity-providers/configuring-adfs)

    - NTLM or Kerberos-based SSO for Internet Access: [NTLM or Kerberos single sign-on for Internet Access](../../setting-up-zero-trust-secure-access-internet-access-and-ai-service-access/identity-and-access-management-integration/active-directory-on-premises-integration-and-sso-for-zero-trust-secure-access/ntlm-single-sign-internet-access)
