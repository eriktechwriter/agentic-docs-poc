---
slug: trend-vision-one-iam-systems-required-permissions
sidebar_position: 2
title: Supported IAM systems and required permissions
---

Integrate a supported IAM system with Zero Trust Secure Access and grant the required permissions.

Zero Trust Secure Access supports the following IAM systems:

- [Microsoft Entra ID](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-private-access/identity-and-access-management-integration/ztsa-integration-sso)

- [Okta](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-private-access/identity-and-access-management-integration/ztsa-okta-integration-sso)

- [Active Directory (on-premises)](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-private-access/identity-and-access-management-integration/ad-onprem-ztsa)

- [OpenLDAP](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-private-access/identity-and-access-management-integration/openldap-integration-sso-ztsa)

- [Google Cloud Identity](../../getting-started-with-zero-trust-secure-access/deployment-guides/setting-up-zero-trust-secure-access-private-access/identity-and-access-management-integration/gcp-integrat-sso-ztsa)

You must grant certain permissions within your IAM system to enable Zero Trust Secure Access to monitor user sign-in attempts, access user data, and perform actions on user accounts. To enable user authentication for Private Access and Internet Access, you must configure SAML-based single sign-on (SSO) for your IAM system.

:::note
- Zero Trust Secure Access only supports SSO for one IAM system at a time.

- Internet Access also supports NTLM v2-based SSO for your on-premises Active Directory.

- To ensure web access from public or home networks for users without the Secure Access Module, you must verify your authentication domain in [Domain Verification](../../../administration/domain-verification). Domain verification is unnecessary when using NTLM v2 or Kerberos-based authentication.
:::

**Permission Requirements**

<table>
<colgroup>
<col style="width: 60%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr>
<th rowspan="2"><p>Purpose</p></th>
<th colspan="2"><p>Permission</p></th>
</tr>
<tr>
<th><p>Data Upload</p></th>
<th><p>Policy Enforcement</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Access user profiles and activity data for risk analysis</p></td>
<td><p>Yes</p></td>
<td><p>-</p></td>
</tr>
<tr>
<td><p>Take direct action on user accounts that violate policy rules (for example, Disable User Account, Force Sign Out, Force Password Reset)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr>
<td><p>Private Access authentication (SSO)</p></td>
<td><p>Yes</p></td>
<td><p>-</p></td>
</tr>
<tr>
<td><p>Internet Access authentication (SSO)</p></td>
<td><p>Yes</p></td>
<td><p>-</p></td>
</tr>
</tbody>
</table>
