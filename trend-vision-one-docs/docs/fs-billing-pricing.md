---
slug: trend-vision-one-fs-billing-pricing
title: Billing and pricing
---

You have two options for subscribing to File Security:

- **Annual credits**. You can purchase credits either for files scanned, or per bucket or files scanned if you are using File Security Storage.

- **Pay-as-you-go**. You can subscribe to Trend Vision One File Security and only pay for what you deploy and use. Pay-as-you-go billing depends on your usage of the File Security services, reported on an hourly basis. You sign up for pay-as-you-go billing on the AWS Marketplace.

The following table compares the pricing for File Security features for both credits and pay-as-you-go.

:::note
- You can configure File Security SDK and File Security Storage separately using credits or pay-as-you-go.

- The number of scans made updates every hour.

- If you are using pay-as-you-go for buckets, you are charged each hour that the bucket is protected, even if no scans occur.
:::

**Credits vs. pay-as-you-go pricing**

<table style="width:99%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Credit requirement</p></th>
<th><p>Pay-as-you-go pricing</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>File Security SDK</p></td>
<td><p>5,000 credits per 500,000 scans</p></td>
<td><p>$0.013 per scan</p></td>
</tr>
<tr>
<td><p>File Security Virtual Appliance</p></td>
<td><p>5,000 credits per 500,000 scans</p></td>
<td><p>$0.013 per scan</p></td>
</tr>
<tr>
<td><p>File Security Containerized Scanner</p></td>
<td><p>5,000 credits per 500,000 scans</p></td>
<td><p>$0.013 per scan</p></td>
</tr>
<tr>
<td><p>File Security Storage (scans)</p></td>
<td><p>5,000 credits per 500,000 scans</p></td>
<td><p>$0.013 per scan</p></td>
</tr>
<tr>
<td><p>File Security Storage (buckets)</p></td>
<td><p>9,636 credits per bucket (unlimited scans for the bucket)</p></td>
<td><p>$1.155 per bucket per hour (unlimited scans for the bucket while protected)</p>

:::note

<p>The hourly bucket rate is the same as 89 scans. If you are scanning fewer than 89 files, the File Security Storage (scans) pay-as-you-go rate is cheaper.</p>

:::

</td>
</tr>
</tbody>
</table>

To switch supported features between credit-based licensing and pay-as-you-go, see [Credits & Billing](credits-billing.md).
