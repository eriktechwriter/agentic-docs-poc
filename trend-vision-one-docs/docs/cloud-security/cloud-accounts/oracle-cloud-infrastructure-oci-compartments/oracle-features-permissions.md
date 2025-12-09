---
slug: trend-vision-one-oracle-features-permissions
sidebar_position: 2
title: Oracle Cloud Infrastructure (OCI) features and permissions
---

Connecting your OCI compartment account allows various Trend Vision One apps and security features to access your cloud assets and gain greater visibility over assets and monitor for potential threats. Each feature and permission is described in the table below.

<table>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Description</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Core Features and Cyber Risk Exposure Management</p></td>
<td><p>The core set of features and permissions required to connect your OCI compartment.</p>
<p>Core features enable you to connect your OCI compartment to Trend Vision One to discover your cloud assets and rapidly identify risks such as compliance and security best practices violations on your cloud infrastructure.</p>

:::note

&#10;
:::


Core features are required to connect your OCI compartments and cannot be disabled. If you need to disconnect your account, see <a href="trend-vision-one-oracle-cloud-compartments">Oracle Cloud Infrastructure (OCI) compartments</a>.

:::note

<p>Your OCI assets appear in the Endpoint Inventory list. Assets without the Trend Vision One Endpoint Security agent installed appear as <a href="trend-vision-one-endpoint-list-faq">unmanaged endpoints</a>.</p>

:::

</td>
</tr>
<tr>
<td><p>Cyber Risk Exposure Management - Cloud account assessment</p></td>
<td><p>Discover and assess your cloud assets for attack exposure, risk factors, and security posture. When you enable Cyber Risk Exposure Management - Cloud account assessment, you can monitor and manage your OCI cloud assets in the following Trend Vision One apps:</p>
<ul>
<li><p><strong>Cyber Risk Exposure Management → Attack Surface Discovery</strong></p>
<p>For more information, see <a href="trend-vision-one-attack-surface-discovery">Attack Surface Discovery</a>.</p></li>
<li><p><strong>Cyber Risk Exposure Management → Threat and Exposure Management</strong></p>
<p>For more information, see <a href="trend-vision-one-operations-dashboard">Threat and Exposure Management</a>.</p></li>
<li><p><strong>Cyber Risk Exposure Management</strong> ➞ <strong>Cloud Security Posture</strong>.</p>
<p>For more information, see <a href="trend-vision-one-cloud-overview-dashboard">Cloud Security Posture</a>.</p></li>
</ul></td>
</tr>
<tr>
<td><p>Agentless Vulnerability &amp; Threat Detection</p></td>
<td>
:::warning[Important]

<p>This is a "Pre-release" feature and is not considered an official release. Please review the <a href="trend-vision-one-pre-release-disclaimer">Pre-release disclaimer</a> before using the feature.</p>

:::


<p>This feature set allows Trend Vision One to deploy Agentless Vulnerability &amp; Threat Protection in your OCI compartment to discover vulnerabilities and malware in your OCI block volumes, OCI boot volumes attached to computer instances, and OCI Container Registry images.</p>

:::warning[Important]

Enabling Agentless Vulnerability &amp; Threat Detection requires LocalShell deployment. If you are enabling this feature on a compartment that was already connected using Oracle Resource Manager, you must change the deployment type to LocalShell. For more information on LocalShell deployment, see <a href="trend-vision-one-connect-oci-localshell">Connect an OCI compartment using LocalShell</a>.

:::

</td>
</tr>
</tbody>
</table>
