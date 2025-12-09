---
slug: trend-vision-one-all-alerts
sidebar_position: 1
title: All Alerts
---

Investigate and understand the extent and severity of any alert to further decide response actions.

The **All Alerts** screen (**Agentic SIEM & XDR → Workbench**) displays all the standalone alerts triggered by detection models.

The following table outlines the actions available on the **Alert View** screen.

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><p>Action</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Investigate an alert</p></td>
<td><p><a href="trend-vision-one-investigating-alert">Understand the extent and severity of any alert</a> to further decide response actions.</p></td>
</tr>
<tr>
<td><p>Open a new case</p></td>
<td><p>Locate a Workbench alert and click <strong>Open new case</strong> to create a new case to handle the alert.</p>

:::warning[Important]

<p><a href="trend-vision-one-case-management">Opening a case</a> for standalone alerts disables the Workbench alert note functionality and transfers all related Workbench notes to the case.</p>
<p>You can only add new notes can directly to the case.</p>

:::

</td>
</tr>
<tr>
<td><p>View alert details</p></td>
<td><p>Click the ID of an alert to <a href="trend-vision-one-alert-details">view the summary, highlights, and observable graph</a> of the alert.</p></td>
</tr>
<tr>
<td><p>Filter alert data</p></td>
<td><p>Use the drop-down menus to filter alert data by alert <strong>Status</strong>, <strong>Case status</strong> in Case Management, alert <strong>Created</strong> time, and investigation <strong>Findings</strong>.</p>

:::note

<p>The following investigation findings are available:</p>
<ul>
<li><p><strong>-</strong>: The investigation has no findings.</p></li>
<li><p><strong>Benign true positive</strong>: The investigation confirmed the presence of a genuine threat that poses no risk to the organization. Benign true positives are the result of penetration tests or other legitimate activities in your environment.</p></li>
<li><p><strong>False positive</strong>: No malicious activity found.</p></li>
<li><p><strong>Noteworthy</strong>: Trend Vision One detected unusual activity that requires more investigation.</p></li>
<li><p><strong>True positive</strong>: The investigation confirmed the occurrence of threats or malicious activities.</p></li>
</ul>

:::


<p>Click <strong>Add filter</strong> and select an option from the drop-down menu to filter by <strong>Asset group</strong>, <strong>Custom tag</strong>, <strong>Criticality</strong>, <strong>Data source / processor</strong>, <strong>Endpoint group</strong>, <strong>Model name</strong>, <strong>Model type</strong>, and <strong>Owners</strong>.</p>
<p>You can also use the search box to filter alert data.</p></td>
</tr>
<tr>
<td><p>Change the view</p></td>
<td><p>Change the view by selecting one of the following options from the <strong>View</strong> drop-down menu:</p>
<ul>
<li><p><strong>All</strong>: Shows all the alerts that match the filter criteria</p></li>
<li><p><strong>Group by</strong></p>
<ul>
<li><p><strong>Model</strong>: Groups the alerts by the detection model name</p></li>
<li><p><strong>Endpoint</strong>: Groups the alerts by the endpoint name</p></li>
</ul>

:::tip

<p>Click the right arrow (<img src="./images/Workbench_right_arrow=GUID-086A3484-09C5-4182-8C88-8B5D59C8E61F=1=en-us=Low.webp" />) of each row to expand the alerts grouped by a specific model or endpoint name.</p>

:::

</li>
</ul></td>
</tr>
<tr>
<td><p>Change the alert status</p></td>
<td><p>Select one or more alerts and click <strong>Change Status</strong> to update the progress of alerts or investigations.</p></td>
</tr>
<tr>
<td><p>Change alert findings</p></td>
<td><p>Select one or more alerts and click <strong>Change Findings</strong> to update the findings of the case.</p></td>
</tr>
<tr>
<td><p>Assign owner</p></td>
<td><p>Select one or more alerts and click <strong>Assign Owner</strong> to <a href="trend-vision-one-assigning-alerts">assign accounts within your organization to the alerts</a>.</p></td>
</tr>
<tr>
<td><p>Move alerts across Workbench insights</p></td>
<td><p>Select one or more alerts and select any of the following options:</p>
<ul>
<li><p><strong>Associate with insight</strong>: Moves the alerts to the specified Workbench insight.</p></li>
<li><p><strong>Remove from insight</strong>: Removes alerts from their current Workbench insights.</p></li>
</ul>

:::warning[Important]

<ul>
<li>Workbench no longer attempts to correlate the alerts you move with any new alerts.</li>
<li><p>Alerts can only belong to one Workbench insight.</p></li>
</ul>

:::

</td>
</tr>
<tr>
<td><p>See Automated Response Playbooks</p></td>
<td><p>Click <strong>Automated Response Playbooks</strong> to display the <a href="trend-vision-one-create-automated-response-playbooks">Automated Response playbooks</a> available in <a href="trend-vision-one-security-playbooks">Security Playbooks</a>.</p></td>
</tr>
</tbody>
</table>

**Related information**

- [Alert details](./alert-details "Workbench provides detailed alert information for more effective investigations.")
- [Investigate an alert](./investigate-an-alert "After a detection model triggers an alert, you can begin an in-depth investigation by drilling into the alert details.")
- [Add an exception from the context menu](./adding-exception-context-menu-2 "During alert investigation, you can exclude objects from future detections.")
- [Assign owners to Workbench alerts](./assigning-alerts "Assign owners to your Workbench alerts so that your security team can track changes and receive notifications.")
