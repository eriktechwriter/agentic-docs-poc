---
slug: trend-vision-one-container-protection
title: Configuration
---

Configure security policies and Runtime Scanning rulesets and attestors, and enable compliance scanning.

The following table provides an overview the main sections in Configuration.

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><p>Section</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Policy</p></td>
<td><p><a href="trend-vision-one-policies">Configure and manage policies</a> that you can then assign to Amazon ECS and Kubernetes clusters.</p></td>
</tr>
<tr>
<td><p>Compliance</p></td>
<td><p><a href="trend-vision-one-compliance-scanning">Enable compliance scanning</a> to scan your Amazon EKS clusters for security compliance issues and generate reports with actionable insights.</p>

:::warning[Important]

<p>Compliance scanning is currently only supported on EKS clusters mapped within Trend Vision One to a connected AWS account. Real-Time Posture Monitoring must be enabled in that account, and the latest Container Security software must be installed.</p>

:::

</td>
</tr>
<tr>
<td><p>Object management</p></td>
<td><p><a href="trend-vision-one-managing-attestors">Manage attestors</a> and <a href="trend-vision-one-rulesets">Configure rulesets</a> and that you can apply to policies that are assigned to clusters with Runtime Scanning enabled.</p></td>
</tr>
</tbody>
</table>

**Related information**

- [Policy](policies.md "Define Container Security policies to ensure protection and vulnerability detection for your containers during deployment and run time.")
- [Compliance](compliance-scanning.md "Scan your Amazon EKS, Kubernetes, Red Hat OpenShift, Google GKE, and Microsoft AKS clusters for security compliance issues and generate reports with actionable insights.")
- [Object management](rulesets.md "Define Container Security managed rulesets to ensure protection for your containers during Runtime Security scanning.")
