---
slug: trend-vision-one-ASRM-data-sources
sidebar_position: 2
title: Cyber Risk Exposure Management data sources
---

View and manage the Trend and third-party data sources that supply data to **Cyber Risk Exposure Management**.

To enable **Cyber Risk Exposure Management** capabilities, including asset discovery, vulnerability assessment, and risk event detection, you must have one or more Trend Micro or third-party data sources connected to Trend Vision One. The **Cyber Risk Exposure Management** section in **Data usage and monitoring** under **Data Source and Log Management** displays supported data sources along with the connection status and data target. For details on all supported Cyber Risk Exposure Management data sources, see [Configure Cyber Risk Exposure Management data sources](../../../cyber-risk-exposure-management/continuous-risk-management/threat-and-exposure-management/configure-cyber-risk-exposure-management-data-sources).

:::warning[Important]
No additional credits are required for ingestion of Trend native data sources, including data from third-party sources connected directly to Trend Vision One and collected by Trend native sensors. Only third-party log ingestion and extended data retention require additional credit allocation.
:::

The following actions are available in the **Cyber Risk Exposure Management** section.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr>
<th><p>Action</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Sort available data sources by risk factor</p></td>
<td><p>Click a risk factor to display all available data sources that supply data contributing to risk detections in the risk factor.</p></td>
</tr>
<tr>
<td><p>View data source connection status</p></td>
<td><p>The <strong>Status</strong> column displays the data source connection status. If a particular data source has an unexpected connection status, click the data source name for details on the connection status.</p></td>
</tr>
<tr>
<td><p>View data source details</p></td>
<td><p>Click the name of a data source to view:</p>
<ul>
<li><p>Data target details</p></li>
<li><p>Configuration status</p></li>
<li><p>Initial instructions on configuring the data source</p></li>
</ul>

:::tip

<p>Trend data sources are typically managed in the associated product or app. Third-party data sources are typically managed in <a href="trend-vision-one-third-party-integration">Third-Party Integration</a>.</p>

:::

</td>
</tr>
<tr>
<td><p>Edit risk event data retention settings</p></td>
<td><p>Click <strong>Risk event data retention settings</strong> to extend risk event data retention beyond the default of 30 days.</p>

:::note

<ul>
<li><p>Extended data retention requires additional credit allocation for archival data retention. For more details, see <a href="trend-vision-one-credit-req-for-apps-services">Credit requirements for Trend Vision One solutions, capabilities, and features</a>.</p></li>
<li><p>Risk events retained beyond 30 days are not displayed in Cyber Risk Exposure Management but can be retrieved using the platform search function.</p></li>
</ul>

:::

</td>
</tr>
</tbody>
</table>
