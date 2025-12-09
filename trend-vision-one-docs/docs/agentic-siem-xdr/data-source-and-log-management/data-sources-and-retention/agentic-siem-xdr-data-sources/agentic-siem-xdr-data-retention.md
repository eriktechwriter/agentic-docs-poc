---
slug: trend-vision-one-agentic-siem-xdr-data-retention
sidebar_position: 2
title: Agentic SIEM & XDR data retention
---

Learn about data retention for Agentic SIEM & XDR data sources, including the types of data retained, retention types, and how you can change or extend your retention period.

Connected Agentic SIEM & XDR data sources supply data used for analysis, threat hunting, and event correlation. Data is retained using analytic retention by default, which allows for more frequent data queries. Archival retention, used to retain data for compliance purposes or infrequent queries, is only available if you collect the data using a log repository.

Trend Vision One retains Agentic SIEM & XDR-related data for a set predefined or custom retention period. The Agentic SIEM & XDR-related data retention period refers to the following:

- The length of time the retained data can be viewed in **XDR Data Explorer**

- The length of time events can be viewed in **Observed Attack Techniques**

Data retention for Agentic SIEM & XDR data, including Trend native and connected third-party data, can be extended beyond the set retention period. When you extend the data retention period, the retained data includes:

- Activity logs

- Detection logs

- Events in Observed Attack Techniques

Data from Workbench has a fixed retention period of 180 days, but you may extend the retention period if needed by contacting your support provider.

To extend data retention, you can [allocate credits to Agentic SIEM](../../../../administration/credits-billing/annual-credits/credit-requirements-for-trend-vision-one-solutions-capabilities-and-features) and select retention periods for individual data sources in **Data Source and Log Management → Data sources and retention → Agentic SIEM & XDR**. Data for most data sources can be retained for up to two years. You can only change the retention period for a data source once per day.

The following Agentic SIEM & XDR-related data sources, solutions, and capabilities have fixed data retention periods that cannot be extended:

<table style="width:99%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr>
<th><p>Data source, solution, or capability</p></th>
<th><p>Data scope</p></th>
<th><p>Retention period</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p><a href="trend-vision-one-mobile-security">Mobile Security</a></p></td>
<td><ul>
<li><p>Detection logs</p></li>
<li><p>Activity logs</p></li>
</ul></td>
<td><p>180 days</p></td>
</tr>
<tr>
<td><p><a href="trend-vision-one-zero-trust-secure-access-overview">Zero Trust Secure Access</a></p></td>
<td><ul>
<li><p>Detection logs</p></li>
<li><p>Activity logs</p></li>
</ul></td>
<td><p>180 days</p></td>
</tr>
<tr>
<td><p><a href="https://docs.trendmicro.com/en-us/documentation/security-management-system/">TippingPoint SMS</a></p></td>
<td><ul>
<li><p>Point product detection logs</p></li>
</ul></td>
<td><p>30 days</p></td>
</tr>
<tr>
<td><p><a href="https://docs.trendmicro.com/en-us/documentation/article/trend-micro-cloud-one-network-security-Getting_started">Trend Cloud One - Network Security</a></p></td>
<td><ul>
<li><p>Point product detection logs</p></li>
</ul></td>
<td><p>30 days</p></td>
</tr>
<tr>
<td><p><a href="https://docs.trendmicro.com/en-us/documentation/web-security/">Trend Micro Web Security</a></p></td>
<td><ul>
<li><p>Point product detection logs</p></li>
</ul></td>
<td><p>30 days</p></td>
</tr>
<tr>
<td><p><strong>Forensics</strong></p></td>
<td><ul>
<li><p>Workspaces: 180 days</p></li>
<li><p>Evidence reports: 30 days</p></li>
<li><p>Timelines: 180 days</p></li>
<li><p>Scan and query results: 180 days</p></li>
</ul></td>
<td><p>Varies by data scope</p></td>
</tr>
<tr>
<td><p><strong>Workbench</strong></p></td>
<td><ul>
<li><p>Alerts</p></li>
</ul></td>
<td><p>180 days</p>

:::tip

To extend the data retention period for Workbench alerts, contact your support provider.

:::

</td>
</tr>
</tbody>
</table>
