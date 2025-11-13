---
slug: trend-vision-one-set-up-saml-sso-integration-for-2
title: Set up SAML SSO integration
---

:::note
This documentation is relevant only to Cloud Risk Management standalone customers.
:::

### Relevant users {#relevant-users}

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr>
<th><p>User role</p></th>
<th><p>Can access</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Technical Team member</p></td>
<td><img src="./images/check=599d21a3-4a92-48a6-96f0-2390bf1d0db2.webp" /></td>
</tr>
<tr>
<td><p>DevOps Team member</p></td>
<td><img src="./images/check=599d21a3-4a92-48a6-96f0-2390bf1d0db2.webp" /></td>
</tr>
<tr>
<td><p>Security Analyst</p></td>
<td></td>
</tr>
<tr>
<td><p>Security Engineer</p></td>
<td></td>
</tr>
<tr>
<td><p>Compliance Manager</p></td>
<td></td>
</tr>
<tr>
<td><p>Project Manager</p></td>
<td></td>
</tr>
<tr>
<td><p>Security Team Management</p></td>
<td><img src="./images/check=599d21a3-4a92-48a6-96f0-2390bf1d0db2.webp" /></td>
</tr>
<tr>
<td><p>Consultant</p></td>
<td><img src="./images/check=599d21a3-4a92-48a6-96f0-2390bf1d0db2.webp" /></td>
</tr>
</tbody>
</table>

### Example {#example}

My organisation's SAML SSO provider of choice is Active Directory Federation Services (ADFS).

### Solution {#solution}

:::note
*Step 1.* Reach out to [mailto:SSO@cloudconformity.com](mailto:SSO@cloudconformity.com) requesting your SSO provider be activated for your organisation.We currently support Okta, ADFS, Microsoft Entra ID, Centrify, Keycloak, and OneLogin out of the box, with the potential for supporting any SAML 2.0 compliant identity provider.
:::

*Step 2.* The Cloud Risk Management support team will give a configuration template for you to fill out exact details required to activate SSO for your provider_Example of configuration information required\_

- Which SAML 2.0 Identity Provider do you currently use?
- What's your main domain name? (This is what you enter in SP-initiated sign-on page)
- About how many users will you grant access to Cloud Risk Management?
- If you know SAML 2.0 response attribute names (claims) for the following attributes, it can make the integration faster:
  - given name
  - surname
  - email discuss
  - group memberships, or roles
- Which [roles](roles-permissions.md) are you planning to use via SSO? (Admin, Power User, Read-only, and Custom) {: .note }

*Step 3.* Send completed template to [mailto:SSO@cloudconformity.com](mailto:SSO@cloudconformity.com).

*Step 4.* Cloud Risk Management support will confirm once your SSO provider has been activated.
