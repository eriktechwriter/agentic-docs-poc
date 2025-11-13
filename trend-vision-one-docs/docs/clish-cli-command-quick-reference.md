---
slug: trend-vision-one-clish-cli-command-quick-reference
title: Clish CLI command quick reference
---

<table>
<thead style="text-align: left;">
<tr>
<th><p>Command</p></th>
<th><p>Purpose</p></th>
<th><p>Required Flags</p></th>
</tr>
</thead>
<tbody style="text-align: left;">
<tr>
<td><p><code>clish agent show</code></p></td>
<td><p>List agents or show agent details</p></td>
<td><p><code>--instance</code> (optional)</p></td>
</tr>
<tr>
<td><p><code>clish agent create</code></p></td>
<td><p>Create new agent</p></td>
<td><p><code>--name</code></p></td>
</tr>
<tr>
<td><p><code>clish agent onboarding-token issue</code></p></td>
<td><p>Generate onboarding token</p></td>
<td><p><code>--instance</code></p></td>
</tr>
<tr>
<td><p><code>clish agent credential modify</code></p></td>
<td><p>Update agent credentials</p></td>
<td><p><code>--instance</code></p></td>
</tr>
<tr>
<td><p><code>clish agent loglevel show</code></p></td>
<td><p>Show agent log level</p></td>
<td><p><code>--instance</code></p></td>
</tr>
<tr>
<td><p><code>clish agent loglevel modify</code></p></td>
<td><p>Change agent log level</p></td>
<td><p><code>--instance</code>, <code>--loglevel</code></p></td>
</tr>
<tr>
<td><p><code>clish agent quarantine show</code></p></td>
<td><p>Show quarantine status</p></td>
<td><p><code>--instance</code></p></td>
</tr>
<tr>
<td><p><code>clish agent quarantine modify</code></p></td>
<td><p>Change quarantine settings</p></td>
<td><p><code>--instance</code>, <code>--enabled</code></p></td>
</tr>
<tr>
<td><p><code>clish scanner scan-policy show</code></p></td>
<td><p>Show scanner policy</p></td>
<td><p>None</p></td>
</tr>
<tr>
<td><p><code>clish scanner scan-policy modify</code></p></td>
<td><p>Update scanner policy</p></td>
<td><p>At least one policy flag</p></td>
</tr>
</tbody>
</table>
