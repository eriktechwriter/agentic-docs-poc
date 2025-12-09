---
slug: trend-vision-one-uninstall-deep-security-agent-unix
sidebar_position: 3
title: Manually uninstall the Deep Security agent from Unix platforms
---

Uninstall connected Deep Security agents from Unix platforms.

:::note
When uninstalling a Deep Security agent, the agent does not notify your Protection Managers when uninstalling. The affected endpoint appears on the **Computers** page with a status of "Managed (Offline)" or similar. To resolve the issue:

- Deactivate the agent before you uninstall Server & Workload Protection, or

- Delete the computer from the list after you uninstall Server & Workload Protection.
:::

The Trend Vision One Endpoint Security agent and Server & Workload Protection do not support Unix platforms at this time. However, depending on your environment, you might have Deep Security agents connected to your Protection Managers deployed to one of the following Unix platforms:

- AIX

- Solaris 10

- Solaris 11

To manually remove the Deep Security agent, run the respective command for your Unix platform:

<table style="width:99%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr>
<th><p>Platform</p></th>
<th><p>Command</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>AIX</p></td>
<td><p><code>installp -u ds_agent</code></p></td>
<td> </td>
</tr>
<tr>
<td><p>Solaris 10</p></td>
<td><p><code>pkg uninstall ds-agent</code></p></td>
<td><p>You might need to restart the system to complete the uninstall process.</p></td>
</tr>
<tr>
<td><p>Solaris 11</p></td>
<td><p><code>pkgrm ds-agent</code></p></td>
<td><p>You might need to restart the system to complete the uninstall process.</p></td>
</tr>
</tbody>
</table>
