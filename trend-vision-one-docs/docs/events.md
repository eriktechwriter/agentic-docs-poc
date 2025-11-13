---
slug: trend-vision-one-events
title: Log
---

Monitor vulnerability detections and security events, view policy violations detected on containers by Runtime Security, and use Container Image Scanning for pre-runtime scans of your Kubernetes clusters.

<table>
<tbody>
<tr>
<td><p>Deployment/Continuous</p></td>
<td><p>View policy violations detected by Runtime Security.</p></td>
</tr>
<tr>
<td><p>Runtime vulnerabilities</p></td>
<td><p><a href="trend-vision-one-vulnerabilities-container-prot">View vulnerabilities</a> detected on clusters by Runtime Scanning.</p></td>
</tr>
<tr>
<td><p>Container Image Scanning</p></td>
<td><p><a href="trend-vision-one-artifact-scanner-tmas">Learn how to set up and deploy artifact scanners</a> in your CI/CD pipelines. After artifact scanning is set up, you can view the scan results of registry image artifacts for vulnerabilities, malware, and secrets from this page.</p></td>
</tr>
</tbody>
</table>

Runtime Security detects security policy violations in your existing clusters. Once a violation is detected on a container, the detection displays. The **Events** screen outlines the different types of policies deployed to your containers:

- **Deployment/Continuous**, **Runtime Malware**, **Runtime Secret**: Kubernetes only policies

- **Runtime Vulnerabilities**, **Runtime Security**: Kubernetes or Amazon ECS policies

### Deployment/Continuous {#deploymentcontinuous}

The following table outlines the actions available in Deployment/Continuous.

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
<td><p>Filter the displayed data</p></td>
<td><p>Click <strong>Filter</strong> and select one or more of the following filters.</p>
<ul>
<li><p>Action</p></li>
<li><p>Mitigation</p></li>
<li><p>Policy</p></li>
<li><p>Cluster</p></li>
<li><p>Namespace</p></li>
<li><p>Operation</p></li>
<li><p>Kind</p></li>
<li><p>Time</p></li>
</ul></td>
</tr>
<tr>
<td><p>Locate triggered policies</p></td>
<td><p>Click the <strong>Policy</strong> link to locate the policy that triggered the detection in the <a href="trend-vision-one-policies">Policies tab</a>.</p></td>
</tr>
<tr>
<td><p>Export a list of events</p></td>
<td><p>Click the <strong>Export</strong> button to create and download a .CSV file listing all the events on the page.</p></td>
</tr>
<tr>
<td><p>Locate the affected clusters</p></td>
<td><p>Click the <strong>Cluster</strong> link to redirect and locate the affected cluster in Container Security.</p></td>
</tr>
</tbody>
</table>

**Related information**

- [Runtime vulnerabilities](vulnerabilities-container-prot.md "Find out which clusters host containers with vulnerabilities detected by Runtime Scanning.")
- [Container Image Scanning](container-image-scanning.md)
