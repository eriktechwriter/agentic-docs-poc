---
slug: trend-vision-one-aws-usage-type-cost-tag-ref
sidebar_position: 2
title: AWS usage type and cost allocation tags for Trend Vision One solutions
---

View the billing dimension and AWS-generated cost allocation tag for each supported Trend Vision One pay-as-you-go offering.

:::warning[Important]
To view cost tagging for File Security SDK, Virtual Appliance, and Containerized Scanner, you must first set a cloud account ID to automatically append to all scan tags. This cloud account ID maps to the `aws:marketplace:isv:customTag` tag in the AWS Billing and Cost Management console.

For more information on setting the File Security cloud account ID, see the [Trend Vision One File Security Go SDK User Guide](https://github.com/trendmicro/tm-v1-fs-golang-sdk?tab=readme-ov-file).
:::

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr>
<th><p>Solution</p></th>
<th><p>Offering</p></th>
<th><p>Usage type</p></th>
<th><p>Tag</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Trend Vision One Cyber Risk Exposure Management</p></td>
<td><p>Cloud Risk Management</p></td>
<td><p><code>MP:TM_ASRM_Cloud-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td rowspan="5"><p>Trend Vision One <strong>Endpoint Security</strong></p></td>
<td><p>Endpoint Security - Essentials</p></td>
<td><p><code>MP:TM_ES_Essentials-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td><p>Endpoint Security - Small</p></td>
<td><p><code>MP:TM_ES_Small-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td><p>Endpoint Security - Medium</p></td>
<td><p><code>MP:TM_ES_Medium-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td><p>Endpoint Security - Large</p></td>
<td><p><code>MP:TM_ES_Large-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td><p>Endpoint Security - Not Cloud</p></td>
<td><p><code>MP:TM_ES_NotCloud-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td rowspan="5"><p>Trend Vision One <strong>File Security</strong></p></td>
<td><p>File Security SDK</p></td>
<td><p><code>FS_SDK_SUBMISSION_STATISTICS</code></p></td>
<td><p><code>aws:marketplace:isv:customTag</code></p></td>
</tr>
<tr>
<td><p>File Security Virtual Appliance</p></td>
<td><p><code>FS_VA_SCAN_STATISTICS</code></p></td>
<td><p><code>aws:marketplace:isv:customTag</code></p></td>
</tr>
<tr>
<td><p>File Security Containerized Scanner</p></td>
<td><p><code>FS_CTR_SCAN_STATISTICS</code></p></td>
<td><p><code>aws:marketplace:isv:customTag</code></p></td>
</tr>
<tr>
<td><p>File Security Storage (buckets)</p></td>
<td><p><code>MP:TM_File_Storage-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
<tr>
<td><p>File Security Storage (scans)</p></td>
<td><p><code>MP:TM_FSS_Scan-Units</code></p></td>
<td><p><code>aws:marketplace:isv:cloudAccountID</code></p></td>
</tr>
</tbody>
</table>
