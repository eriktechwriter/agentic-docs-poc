---
slug: trend-vision-one-add-user-2
title: Add user
---

:::note
Please see [Trend Vision One User Management](https://cloudone.trendmicro.com/docs/identity-and-account-management/c1-user-new/) if you’re accessing Cloud Risk Management through the Trend Vision One console. This documentation is relevant only to Cloud Risk Management standalone customers.
:::

Cloud Risk Management provides management tools to give your organization's users access to [Cloud Accounts](cloud-accounts-cloud-posture-setup.md) to fit into your business' workflow and processes. Access to Cloud Risk Management is provisioned according to the needs of each staff member using [Roles and Entitlements](roles-permissions.md). Users can be granted access to one or many accounts, with the ability to restrict access to read only or administrator for each account. This separation of access ensures staff only gains visibility of infrastructure and best practice violations specific to their duties.

### User Access {#user-access}

<table>
<thead>
<tr>
<th><p>User Role</p></th>
<th><p>Can Access</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Administrator</a></p></td>
<td><img src="./images/check=599d21a3-4a92-48a6-96f0-2390bf1d0db2.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Power User</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Custom - Full Access</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Read Only</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-roles-permissions">Custom - Read Only</a></p></td>
<td><img src="./images/error=fcd35f56-eec6-4fb9-a57b-188dcbc76162.webp" /></td>
</tr>
</tbody>
</table>

### Add a user {#add-a-user}

Once an organisation has been set up, an [Administrator](roles-permissions.md) can invite new users. Currently, we do not allow users creation in bulk, however there is no limit on the number of users an Administrator role can invite.

Input details of the new user and *Invite user.* You can also decide whether the new user will be an [Administrator.](roles-permissions.md) Invited users will receive an invitation email to join the Cloud Risk Management platform.

Note: Administrator role can invite users only after an account has been added.

### Manage user {#manage-user}

You can *Configure* any user's access level at account level by assigning a different role. While a user can have access to any number of accounts, the Custom Role provides you with more flexibility to assign separate access for each account. For more information on roles and associated access levels, see [Roles and Entitlements](roles-permissions.md).

:::note
By default, new users on the Cloud Risk Management platform will have Custom - No access role assigned to them.
:::

*How can we restrict a user from having access to a particular account? I do not want our Sales team to have access to our Development accounts.*

From the *Administration* tab, go to *Users* and click *Configure* to update a user's role to Custom - No Access role to restrict their access to an account.

### Remove a user {#remove-a-user}

Click on *Revoke user* to remove user from the organisation.

:::note
When administrator modifies user's access level or removes a user - If that user is signed in at that time, they will be logged out on the next action they take on the Cloud Risk Management platform.
:::
