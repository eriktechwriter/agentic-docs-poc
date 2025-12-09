---
slug: trend-vision-one-deploy-agents
sidebar_position: 1
title: Deploy agents
---

Install the Trend Vision One Endpoint Security agent on your endpoints.

After setting up your network environment, managing your endpoint groups, configuring proxies and configuring your default policies, you can begin deploying agents to more endpoints in your network. Review the agent configurations and ensure you install the correct agent package on your endpoints to maximize your protection.

Before deploying agents, make sure that you configure the following:

- [Agent installer proxy settings](../../../endpoint-inventory/global-settings/agent-installer-proxy-settings)

- [Runtime proxy settings](../../../endpoint-inventory/global-settings/runtime-proxy-settings)

- [Endpoint security policies](../../../endpoint-security-configuration/endpoint-security-policies)

- [Version control policies](../../../endpoint-security-configuration/version-control-policies)

After deploying agents, ensure continued support by following the [agent support policy](../../../endpoint-inventory/trend-vision-one-endpoint-security-agent-system-requirements/extended-support-for-agents) for the type of agent installed.

<table>
<colgroup>
<col style="width: 13%" />
<col style="width: 42%" />
<col style="width: 27%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr>
<th><p>Agent configuration</p></th>
<th><p>Description</p></th>
<th><p>Supported operating systems</p></th>
<th><p>Agent package name</p></th>
</tr>
</thead>
<tbody>
<tr>
<td rowspan="2"><p>Standard Endpoint Protection</p></td>
<td rowspan="2"><p>Provides user-centric anti-malware protection for the workstations your employees use for day-to-day operations, which also includes Data Loss Prevention capabilities</p>
<p><a href="trend-vision-one-sep-agent-deployment">Standard Endpoint Protection agent installation</a></p></td>
<td><ul>
<li><p>Windows: All currently supported versions based on <a href="https://learn.microsoft.com/en-us/lifecycle/products/">Microsoft's Lifecycle Policy</a>, including older versions supported through Microsoft's <a href="https://learn.microsoft.com/en-us/lifecycle/faq/extended-security-updates">Extended Security Update (ESU) program</a></p>
<ul>
<li><p>Except for Windows versions supported by the ESU program, Trend Micro continues supporting older Windows versions for one year after official total end-of-support</p></li>
</ul></li>
</ul></td>
<td><p>EndpointBasecamp.exe</p></td>
</tr>
<tr>
<td><ul>
<li><p>macOS: Current version plus the <a href="https://support.apple.com/en-us/HT201260">last five version releases</a></p></li>
</ul></td>
<td><p>endpoint_basecamp.pkg</p></td>
</tr>
<tr>
<td rowspan="2"><p>Server &amp; Workload Protection</p></td>
<td rowspan="2"><p>Provides stronger protection for servers and cloud workloads that need to meet stringent compliance requirements</p>
<p><a href="trend-vision-one-swp-agent-deployment">Server &amp; Workload Protection agent installation</a></p></td>
<td><ul>
<li><p>Windows: All currently supported versions based on <a href="https://learn.microsoft.com/en-us/lifecycle/products/">Microsoft's Lifecycle Policy</a></p>
<ul>
<li><p>Trend Micro continues supporting older Windows versions for one year after official total end-of-support</p></li>
</ul></li>
</ul></td>
<td><p>EndpointBasecamp.exe</p></td>
</tr>
<tr>
<td><ul>
<li><p>Linux: All current vendor-supported versions</p>
<ul>
<li><p>Trend Micro continues supporting older Linux versions for one year after official vendor end-of-support</p></li>
</ul></li>
</ul></td>
<td><p>tmxbc</p></td>
</tr>
<tr>
<td rowspan="3"><p>Endpoint Sensor</p></td>
<td rowspan="3"><p>Provides the detection and response features necessary to receive comprehensive Workbench alerts and XDR data correlation</p>
<p><a href="trend-vision-one-endpoint-sensor-agent-deployment">Deploy agents with only Endpoint Sensor features</a></p></td>
<td><ul>
<li><p>Windows: All currently supported versions based on <a href="https://learn.microsoft.com/en-us/lifecycle/products/">Microsoft's Lifecycle Policy</a>, including older versions supported through Microsoft's <a href="https://learn.microsoft.com/en-us/lifecycle/faq/extended-security-updates">Extended Security Update (ESU) program</a></p>
<ul>
<li><p>Trend Micro continues supporting older Windows versions for one year after official total end-of-support</p></li>
</ul></li>
</ul></td>
<td><p>EndpointBasecamp.exe</p></td>
</tr>
<tr>
<td><ul>
<li><p>macOS: Current version plus the <a href="https://support.apple.com/en-us/HT201260">last five version releases</a></p></li>
</ul></td>
<td><p>endpoint_basecamp.pkg</p></td>
</tr>
<tr>
<td><ul>
<li><p>Linux: All current vendor-supported versions</p>
<ul>
<li><p>Trend Micro continues supporting older Linux versions for one year after official vendor end-of-support</p></li>
</ul></li>
</ul></td>
<td><p>tmxbc</p></td>
</tr>
</tbody>
</table>

For deploying to VDI environments, see [Creating a golden image with the agent software](./deployment-using-a-golden-image/create-golden-agent-image).

For deploying using Microsoft central management tools, see [Deploying Agents with a Software Management System](./deploying-agents-with-a-software-management-system).

:::note
See the [agent system requirements](../../../endpoint-inventory/trend-vision-one-endpoint-security-agent-system-requirements) for specific supported versions of each supported operating system.
:::

**Related information**

- [Deploy agents with Standard Endpoint Protection features](./sep-agent-deployment "Install the Trend Vision One Endpoint Security agent with Standard Endpoint Protection security features.")
- [Deploy agents with Server & Workload Protection features](./swp-agent-deployment "Download and install a Trend Vision One Endpoint Security agent with Server & Workload Protection features.")
- [Deploy agents with only Endpoint Sensor features](./endpoint-sensor-agent-deployment "Download and install a Trend Vision One Endpoint Security agent with only Endpoint Sensor features.")
- [Deployment using the offline installer package](./deployment-offline-installer)
- [Install the Endpoint Security agent image builder](./install-the-endpoint-security-agent-image-builder)
- [Run the deployment script](./run-the-deployment-script "Use a deployment script to download and install the agent on your endpoints.")
- [Deployment using a golden image](./deployment-using-a-golden-image "Review information about deploying endpoint agents using system templates such as a golden image.")
- [Deploying Agents with a Software Management System](./deploying-agents-with-a-software-management-system "Use a software management system such as Microsoft Intune to deploy the agent installer to your managed endpoints.")
