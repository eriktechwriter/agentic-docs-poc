---
slug: trend-vision-one-roles-permissions-2
sidebar_position: 1
title: Roles and permissions
---

:::note
Please see [Trend Vision One User Management](https://docs.trendmicro.com/en-us/documentation/article/trend-micro-cloud-one-main-identity-and-account-management) if you’re accessing Cloud Risk Management through the Trend Vision One console. The first four roles in this document is relevant only to Cloud Risk Management standalone customers.
:::

## Roles {#roles}

Trend Vision One™ – Cloud Risk Management supports five user roles:

An Administrator user can [assign roles](../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/manage-users/user/add-user) to other users.

## Administrator {#administrator}

The Administrator role has access to all of the Cloud Risk Management features including [addition of new users](../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/manage-users/user/add-user) and [managing subscriptions](../../../../../../cyber-risk-exposure-management/security-posture-management/cloud-risk-management/misconfiguration-and-compliance/administration-settings/manage-subscriptions). This role is at a system level rather than at an account level, implying that an Administrator role can see all accounts within an organization and has complete access to all API endpoints.

By default, the user who registered your organization on the Cloud Risk Management platform is assigned the Administrator role. However, this can be changed once more users with Administrator privileges are added to the system.

Once a user signs in to Cloud Risk Management via ADFS, they are given a role in Cloud Risk Management based on their ADFS group membership. Permissions and privileges of the ADFS-granted Administrator role are the same as the Cloud Risk Management local Administrator role.

## Power User {#power-user}

Power Users have full privileges for all the existing accounts as well as for the accounts that will be added in the future. Power users do not have access to Organisation level settings.

:::note
This role is not currently available to Trend Vision One™users.
:::

## Read Only {#read-only}

Users with Read only role have read only access to all the existing accounts as well as for the accounts that will be added in the future.

## Custom Users {#custom-users}

Custom users are managed by the Administrator. These users can be given three types of custom access for different accounts within Cloud Risk Management:

- *Full Access* - Provides users complete access to an account. Users can modify settings related to the account for which such access has been granted. However, Organisation level settings are not accessible.
- *Read Only* - Users can view account details but do not have permission to modify any settings related to the account for which such access has been granted.
- *No Access* - Restricts access to the user for the specified accounts. A user can be assigned the ‘No Access’ role to specific accounts but given ‘Read Only’ or ‘Full Access’ roles to other accounts in the organisation. Such an user will be able to see only those accounts they have access to on the dashboard.

:::note
This role is not currently available to Trend Vision One™ users.
:::

## Custom Role {#custom-role}

:::note
This role is only currently not available to Cloud Risk Management Standalone customers.
:::

Cloud Risk Management Custom Role is managed by the Administrator and can be mapped with a [Trend Vision One role](https://docs.trendmicro.com/en-us/documentation/article/trend-micro-cloud-one-main-identity-and-account-managementc1-roles) in the Trend Vision One User management section. This role can be given three types of access.

To map a Trend Vision One Role to a Cloud Risk Management Custom Role:

## Create a New Custom Role {#create-a-new-custom-role}

### Procedure {#procedure}

1.  From the Trend Vision One go to Cloud Risk Management.

2.  Click on *Adminsitration* \>\> *Roles and Permissions*.

3.  Click on *Create New Custom Role* and enter the Role name, Description, and define the access permissions from the following list:

    - *Full Access* - Provides users complete access to an account. Users can modify settings related to the account for which such access has been granted. However, Organisation level settings are not accessible.
    - *Read Only* - Users can view account details but do not have permission to modify any settings related to the account for which such access has been granted.
    - *No Access* - Restricts access to the user for the specified accounts. A user can be assigned the ‘No Access’ role to specific accounts but given ‘Read Only’ or ‘Full Access’ roles to other accounts in the organisation. Such an user will be able to see only those accounts they have access to on the dashboard.

4.  Click *Save* to create the new Custom Role.

### Next steps {#next-steps}

:::note
Example: The Custom Role may have no access to one or more production accounts and have access to only development accounts. In this case, the Custom Role should be set to ‘No Access’ role for all production accounts and either ‘Read Only’ or ‘Full Access’ for the development accounts.
:::

## Map Trend Vision One Role to Cloud Risk Management Custom Role {#map-trend-vision-one-role-to-cloud-risk-management-custom-role}

### Procedure {#procedure-1}

1.  From the Trend Vision One console, go to *User Management* \>\> *Roles*. You can map an existing Trend Vision One role or the new custom role you've created for Cloud Risk Management.

2.  Click on a Trend Vision One *Role* from the list of roles.

3.  On the lower half of the page, under the *Previlleges* section, ensure that the *Service* = Cloud Risk Management.

4.  Select a the custom role you've just created from the *Permissions* drop-down.

5.  Click *Save*.

### Next steps {#next-steps-1}

## Assign Custom Role to a Trend Vision One User {#assign-custom-role-to-a-trend-vision-one-user}

Now that you've mapped your Trend Vision One Role and Cloud Risk Management Custom Role, you can assign the mapped Trend Vision One role to a user.

### Procedure {#procedure-2}

1.  Go to *Users*.

2.  Select the user you wish to assign the custom role to.

3.  Under *User Properties*, select the mapped Trend Vision One custom role

4.  Click *Save*.

### Next steps {#next-steps-2}

You now have a Trend Vision One user mapped with custom role permissions for Cloud Risk Management.
