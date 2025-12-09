---
slug: trend-vision-one-standard-token-variables
sidebar_position: 1
title: Standard Token Variables
---

The following table describes token variables for customizing all event notification messages.

:::note
Some event notifications support additional token variables. For the complete list of supported token variables for a specific event notification, refer to the notification method information for the specific event notification.
:::

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><p>Variable</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><code>%cmserver%</code></p></td>
<td><p>The Trend Micro Apex Central server name</p></td>
</tr>
<tr>
<td><p><code>%computer%</code></p></td>
<td><p>The name of the endpoint</p></td>
</tr>
<tr>
<td><p><code>%entity%</code></p></td>
<td><p>The display name of the managed product server in Trend Micro Apex Central</p></td>
</tr>
<tr>
<td><p><code>%event%</code></p></td>
<td><p>The event detected</p></td>
</tr>
<tr>
<td><p><code>%pname%</code></p></td>
<td><p>The name of the managed product</p></td>
</tr>
<tr>
<td><p><code>%pver%</code></p></td>
<td><p>The version of the managed product</p></td>
</tr>
<tr>
<td><p><code>%time%</code></p></td>
<td><p>The time (hh:mm) when the event occurred</p></td>
</tr>
<tr>
<td><p><code>%vloginuser%</code></p></td>
<td><p>The logged on user name at the time of the event</p></td>
</tr>
<tr>
<td><p><code>%act%</code></p></td>
<td><p>The action taken by the managed product. Example: file cleaned, file deleted, file quarantined</p></td>
</tr>
</tbody>
</table>

**Related information**

- [Attack Discovery Token Variables](./attack-discovery-token-variables)
- [Advanced Threat Activity Token Variables](./advthreat-activity-token-vars)
- [C&C Callback Token Variables](./c-c-callback-token-variables)
- [Content Policy Violation Token Variables](./content-violation-token-vars)
- [Data Loss Prevention Token Variables](./dlp-token-variables)
- [Known Threat Activity Token Variables](./known-threat-activity-token)
- [Network Access Control Token Variables](./network-access-token-vars)
- [Web Access Policy Violation Token Variables](./web-access-token-vars)
