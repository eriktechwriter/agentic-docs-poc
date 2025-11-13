---
category: Administration
change_date: 2025-10-27T00:00:00Z
is_what_new: true
slug: trend-vision-one-user-role-flags-api-key-changes
title: User role control flags and API key permission changes
---

October 27, 2025—Trend Vision One introduces user role control flags and API key permission changes.

User role control flags determine whether a role is assignable to API keys and/or user accounts. Only Master Administrators can configure control flags for custom roles. Control flags for predefined roles are defined by Trend Micro and cannot be configured by customers.

API keys can no longer be assigned Master Administrator permissions. Existing API keys with the Master Administrator role are unaffected by this change, but it is recommended that you review your existing API keys and assign them different roles. SIEM & SOAR roles are intended for API key assignments and should not be assigned to user accounts.

For more information, see [User Accounts](user-accounts-foundation-services.md), [Configure custom user roles](custom-user-roles-trend-vision-one.md), and [API Keys](platform-api-keys.md).
