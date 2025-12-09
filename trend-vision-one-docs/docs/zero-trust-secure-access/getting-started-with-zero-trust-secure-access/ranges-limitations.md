---
slug: trend-vision-one-ranges-limitations
sidebar_position: 3
title: Ranges and limitations
---

Lists of the ranges and limitations for secure access rules, resources, and other features in the Zero Trust Secure Access app.

- Secure Access rules

- Secure Access resources

- Private Access configuration

- Internet Access configuration

- Customization settings

**Secure Access rules**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Limit</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Risk Control rule</p></td>
<td><ul>
<li><p>500 rules</p></li>
<li><p>100 users/groups per rule in classic view</p></li>
<li><p>100 users/groups per <strong>Users</strong> node per rule in playbook view</p></li>
<li><p>100 URL categories per rule</p></li>
<li><p>100 custom cloud app categories per rule</p></li>
<li><p>100 specific actions for supported cloud apps per rule</p></li>
<li><p>50 <strong>Users</strong> node branches per customized rule in playbook view</p>

:::note

<p>Customized rules are the rules created from <strong>New rule</strong> in playbook view.</p>

:::

</li>
<li><p>50 <strong>Condition</strong> node branches per <strong>Users</strong> node per customized rule in playbook view</p></li>
</ul></td>
</tr>
<tr>
<td><p>Private Access rule</p></td>
<td><ul>
<li><p>2,000 rules</p></li>
<li><p>100,000 users/groups per rule</p></li>
<li><p>40 locations per rule</p></li>
<li><p>40 internal apps per rule</p></li>
</ul></td>
</tr>
<tr>
<td><p>Internet Access rule</p></td>
<td><ul>
<li><p>200 rules</p></li>
</ul></td>
</tr>
</tbody>
</table>

**Secure Access resources**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Limit</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Device Posture profile</p></td>
<td><ul>
<li><p>1,000 device posture profiles</p></li>
</ul></td>
</tr>
<tr>
<td><p>File profile</p></td>
<td><ul>
<li><p>100 file profiles</p></li>
</ul></td>
</tr>
<tr>
<td><p>Threat Protection rule</p></td>
<td><ul>
<li><p>100 Threat Protection rules</p></li>
<li><p>File size for File Scanning: 2 GB</p></li>
<li><p>File compression layers: 20</p></li>
</ul></td>
</tr>
<tr>
<td><p>Data Loss Prevention rule</p></td>
<td><ul>
<li><p>100 Data Loss Prevention rules</p></li>
</ul></td>
</tr>
<tr>
<td><p>AI Content Inspection rule</p></td>
<td><ul>
<li><p>100 AI Content Inspection rules</p></li>
<li><p>128 characters per rule name</p></li>
<li><p>128 characters per rule description</p></li>
</ul></td>
</tr>
<tr>
<td><p>Custom URL category</p></td>
<td><ul>
<li><p>100 custom URL categories</p></li>
<li><p>1,000 domain/keyword/URL entries per category</p></li>
</ul></td>
</tr>
<tr>
<td><p>Custom Cloud App category</p></td>
<td><ul>
<li><p>200 custom cloud app categories</p></li>
<li><p>200 cloud apps per category</p></li>
</ul></td>
</tr>
<tr>
<td><p>IP Address group</p></td>
<td><ul>
<li><p>1,000 IP address groups</p></li>
<li><p>100 IP addresses per group</p></li>
</ul></td>
</tr>
<tr>
<td><p>Tenancy Restriction rule</p></td>
<td><ul>
<li><p>100 Tenancy Restriction rules</p></li>
<li><p>Applicable domains: 128 characters</p></li>
<li><p>Header field value: 1,024 characters</p></li>
</ul></td>
</tr>
<tr>
<td><p>HTTP/HTTPS Traffic filter</p></td>
<td><ul>
<li><p>200 HTTP/HTTPS Traffic Filters</p></li>
</ul></td>
</tr>
<tr>
<td><p>Data Loss Prevention template and data identifier</p></td>
<td><ul>
<li><p>100 Custom Expressions</p></li>
<li><p>100 Custom File Attributes</p></li>
<li><p>100 Custom Keyword Lists</p></li>
<li><p>1000 Keywords for each custom Keyword List.</p>

:::note

<p>Keywords must be 3-40 characters long.</p>

:::

</li>
</ul></td>
</tr>
</tbody>
</table>

**Private Access configuration**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Limit</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Private Access connector</p></td>
<td><ul>
<li><p>20 Private Access Connector groups</p></li>
<li><p>10 Private Access Connector virtual appliances per group</p></li>
</ul></td>
</tr>
<tr>
<td><p>Internal app</p></td>
<td><ul>
<li><p>1,000 internal apps</p></li>
<li><p>1,000 app group tags</p></li>
<li><p>500 internal apps per app group tag</p></li>
<li><p>1,000 internal apps in the user portal (Browser Access)</p></li>
</ul></td>
</tr>
<tr>
<td><p>Certificate</p></td>
<td><ul>
<li><p>1,000 server certificates</p></li>
<li><p>1,000 enrollment certificates</p></li>
</ul></td>
</tr>
</tbody>
</table>

**Internet Access and AI Service Access configuration**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>List</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Gateways</p></td>
<td><ul>
<li><p>500 corporate network locations</p></li>
<li><p>2,000 public IP addresses for corporate network locations per customer</p></li>
<li><p>500 on-premises gateways</p></li>
<li><p>100 Bandwidth control rules</p></li>
<li><p>100 Rate limit rules</p></li>
<li><p>100 LLM profiles</p></li>
</ul></td>
</tr>
<tr>
<td><p>PAC file</p></td>
<td><ul>
<li><p>30 PAC files</p></li>
</ul></td>
</tr>
<tr>
<td><p>HTTPS Inspection rule</p></td>
<td><ul>
<li><p>100 HTTPS inspection rules</p></li>
</ul></td>
</tr>
<tr>
<td><p>HTTPS Inspection exception</p></td>
<td><ul>
<li><p>2,000 HTTPS inspection exceptions</p></li>
<li><p>100 excluded subdomains per exception</p></li>
<li><p>Domain name: 255 characters</p></li>
</ul></td>
</tr>
<tr>
<td><p>TLS/SSL certificate</p></td>
<td><ul>
<li><p>100 trusted root/intermediate certificates</p></li>
<li><p>100 untrusted root/intermediate certificates</p></li>
<li><p>Root/intermediate certificate file size: 1 MB</p></li>
<li><p>Root/intermediate certificate file format: .pem (Base64 encoding), .p7b (ASCII)</p></li>
<li><p>200 server certificates/common names</p></li>
</ul></td>
</tr>
<tr>
<td><p>Allow List/Deny list</p></td>
<td><ul>
<li><p>1,000 allowed URLs</p></li>
<li><p>1,000 denied URLs</p></li>
</ul></td>
</tr>
</tbody>
</table>

**Customization settings**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Limit</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Page banner</p></td>
<td><ul>
<li><p>Image format: JPEG, JPG, PNG, SVG</p></li>
<li><p>Image size: 100 KB</p></li>
<li><p>Image dimensions: 24 x 24 pixels</p></li>
</ul></td>
</tr>
<tr>
<td><p>Sign In page</p></td>
<td><ul>
<li><p>600 characters</p></li>
</ul></td>
</tr>
<tr>
<td><p>User portal</p></td>
<td><ul>
<li><p>100 characters</p></li>
</ul></td>
</tr>
<tr>
<td><p>Restricted Access page</p></td>
<td><ul>
<li><p><strong>Secure Access Module Notification</strong>: 160 characters</p></li>
<li><p>Other restricted access pages: 10,240 characters</p></li>
</ul></td>
</tr>
</tbody>
</table>

**AI Service Access**

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><p>Feature</p></th>
<th><p>Limit</p></th>
</tr>
</thead>
<tbody>
<tr>
<td><p>Rule</p></td>
<td><ul>
<li><p>100 rules</p></li>
</ul></td>
</tr>
<tr>
<td><p>Rule name</p></td>
<td><ul>
<li><p>128 characters</p></li>
</ul></td>
</tr>
<tr>
<td><p>Rule description</p></td>
<td><ul>
<li><p>128 characters</p></li>
</ul></td>
</tr>
</tbody>
</table>
