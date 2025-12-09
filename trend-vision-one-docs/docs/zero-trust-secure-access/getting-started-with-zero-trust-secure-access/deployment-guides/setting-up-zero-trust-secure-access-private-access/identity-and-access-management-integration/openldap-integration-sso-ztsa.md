---
slug: trend-vision-one-openldap-integration-sso-ztsa
sidebar_position: 5
title: OpenLDAP integration and SSO for Zero Trust Secure Access
---

Integrate with OpenLDAP to authenticate user access attempts and take action on risky account activity.

OpenLDAP integration requires the use of a Service Gateway, third-party integration settings, and SSO.

:::warning[Important]
You cannot configure single sign-on (SSO) from multiple IAMs. Ensure that you configure the necessary permissions and SSO on the IAM you want to use for Private Access and Internet Access authentication.
:::

### Procedure {#procedure}

1.  Prepare a [VMware ESXi](../../../../../workflow-and-automation/service-gateway-management/getting-started-with-service-gateway/deployment-guides/sg-virtual-app-vmware-esxi) or [Microsoft Hyper-V](../../../../../workflow-and-automation/service-gateway-management/getting-started-with-service-gateway/deployment-guides/deploy-virtual-appliance-ms-hyper-v) Service Gateway appliance that connects to your on-premises OpenLDAP server.

2.  Go to **Zero Trust Secure Access → Secure Access Configuration → Identity and Access Management**.

3.  Connect your OpenLDAP server to Trend Vision One by [configuring OpenLDAP integration](../../../../../workflow-and-automation/third-party-integrations/openldap-integration).

4.  Integrate your LDAP service with a SAML-based SSO solution like Active Directory Federation Services (AD FS), Microsoft Entra ID, or Okta.
