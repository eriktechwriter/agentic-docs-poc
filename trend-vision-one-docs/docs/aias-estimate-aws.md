---
slug: trend-vision-one-aias-estimate-aws
title: AI Application Security estimated deployment costs for AWS
---

Estimate and track the cost of deploying and operating [AI Application Security](ai-scanner-ai-guard.md) in your Amazon Web Service (AWS) accounts.

:::warning[Important]
These figures are estimates only and not guaranteed. Actual costs may differ due to changes in AWS pricing or variations between environments.
:::

**Estimated AWS costs for AI Scanner**

<table>
<colgroup>
<col style="width: 40%" />
<col style="width: 20%" />
<col style="width: 40%" />
</colgroup>
<thead style="text-align: left;">
<tr>
<th><p>Component</p></th>
<th><p>Monthly cost (USD)</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody style="text-align: left;">
<tr>
<td><p><a href="trend-vision-one-artifact-scanner-tmas">Trend Micro Artifact Scanner (TMAS)</a></p></td>
<td><p>$0.00</p></td>
<td><p>Run in your environment</p></td>
</tr>
<tr>
<td><p><a href="https://aws.amazon.com/ai/generative-ai/nova/">Amazon Nova Micro</a> large language model (LLM) judge</p></td>
<td><p>$8.40</p></td>
<td><p>$8.40 in ap-southeast-1 region ($0.14 per scan x 60 scans per month)</p></td>
</tr>
<tr>
<td><p>HTTP application programming interface (API) gateway</p></td>
<td><p>$0.14</p></td>
<td><p>138,000 requests per month</p>
<p>60 scans x 2300 API calls</p></td>
</tr>
<tr>
<td><p>TOTAL</p></td>
<td><p>$8.54</p></td>
<td><p>Cost per scan based on 60 scans per month: $0.1423</p></td>
</tr>
</tbody>
</table>

****Estimated AWS costs for AI Guard****

<table>
<colgroup>
<col style="width: 40%" />
<col style="width: 20%" />
<col style="width: 40%" />
</colgroup>
<thead style="text-align: left;">
<tr>
<th><p>Component</p></th>
<th><p>Monthly cost (USD)</p></th>
<th><p>Notes</p></th>
</tr>
</thead>
<tbody style="text-align: left;">
<tr>
<td><p><a href="https://aws.amazon.com/ec2/">Amazon Elastic Compute Cloud (EC2)</a> instance</p></td>
<td><p>$1,065.07</p></td>
<td><p>1 instance x $1.459 per hour x 730 hours</p></td>
</tr>
<tr>
<td><p><a href="https://aws.amazon.com/ebs/">Amazon Elastic Block Store (EBS) storage</a></p></td>
<td><p>$4.80</p></td>
<td><p>50GB volume</p>
<p>730 hours per month</p></td>
</tr>
<tr>
<td><p>Data transfer (EC2)</p></td>
<td><p>$0.46</p></td>
<td><p>4GB outbound</p></td>
</tr>
<tr>
<td><p><a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway">Network Address Translation (NAT) gateway</a></p></td>
<td><p>$47.00</p></td>
<td><p>730 hours x $0.062 per hour + 28GB data processing</p></td>
</tr>
<tr>
<td><p>HTTP API gateway</p></td>
<td><p>$16.72</p></td>
<td><p>12,960,000 requests per month</p></td>
</tr>
<tr>
<td><p><a href="https://aws.amazon.com/elasticloadbalancing/">Amazon Elastic Load Balancing (ELB)</a></p></td>
<td><p>$22.27</p></td>
<td><p>730 hours + <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/application/capacity-unit-reservation">Load balancer Capacity Unit (LCU)</a> usage</p></td>
</tr>
<tr>
<td><p>TOTAL</p></td>
<td><p>$1,156.32</p></td>
<td><p>Cost per scan based on 300 requests per minute: $0.0000892</p></td>
</tr>
</tbody>
</table>
