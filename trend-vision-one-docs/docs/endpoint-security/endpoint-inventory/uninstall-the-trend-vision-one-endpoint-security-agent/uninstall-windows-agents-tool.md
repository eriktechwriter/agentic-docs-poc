---
slug: trend-vision-one-uninstall-windows-agents-tool
sidebar_position: 2
title: Uninstall Windows agents with the tool
---

Use the uninstall tool to remove agents from Windows endpoints.

Trend Micro recommends using an endpoint management software like Microsoft Endpoint Configuration Manager (formerly System Center Configuration Manager (SCCM)) to deploy the uninstall tool. If you do not have access to an endpoint management software, you can run the tool manually from the endpoint using Command Prompt.

### Procedure {#procedure}

1.  On the Trend Vision One console, go to **Endpoint Security → Endpoint Inventory**.

2.  Click **Agent Installer**.

3.  Click the **download the uninstall tool** link at the bottom of the **Agent Installer** screen.

    :::note
    If you do not see the link, you might not have permission to perform this action. Contact your system administrator for assistance.
    :::

    ![](/images/AgentUninstallLink=69d7ba4a-b349-48f0-9eb2-27dd8dfb5d65.webp)

4.  In the **Download Uninstall Tool** screen, locate **Windows** and click the **Download tool** button.

    :::warning[Important]
    Do not save or extract the uninstall tool to a folder or directory with a name that contains double-byte characters (DBCS), such as Japanese or Chinese characters. If the uninstall tool is located in a folder or directory with double-byte characters, the uninstall tool might fail to verify the Trend Micro certificate.

    The downloaded uninstall tool expires after seven days.
    :::

5.  Deploy the uninstall tool package to the target Windows endpoint and unzip the package.

6.  Run `V1ESUninstallTool.exe` with the target product parameter.

    If you are manually uninstalling the tool from the endpoint, use Command Prompt to run the tool with the parameter.

    <table>
    <colgroup>
    <col style="width: 25%" />
    <col style="width: 25%" />
    <col style="width: 25%" />
    <col style="width: 25%" />
    </colgroup>
    <thead>
    <tr>
    <th><p>Target Product</p></th>
    <th><p>Parameter</p></th>
    <th><p>Command</p></th>
    <th><p>Description</p></th>
    </tr>
    </thead>
    <tbody>
    <tr>
    <td><p>Standard Endpoint Protection</p></td>
    <td><p><code>--sep</code></p></td>
    <td><p><code>V1ESUninstallTool.exe --sep</code></p></td>
    <td><p>Only uninstalls Standard Endpoint Protection features</p></td>
    </tr>
    <tr>
    <td><p>Server &amp; Workload Protection</p></td>
    <td><p><code>--swp</code></p></td>
    <td><p><code>V1ESUninstallTool.exe --swp</code></p></td>
    <td><p>Only uninstalls Server &amp; Workload Protection features</p></td>
    </tr>
    <tr>
    <td><p>Server &amp; Workload Protection with self-protection password enabled</p></td>
    <td><p><code>--swp --swp-password=&lt;self-protection password&gt;</code></p></td>
    <td><p><code>V1ESUninstallTool.exe --swp --swp-password=&lt;self-protection password&gt;</code></p></td>
    <td><p>Only uninstalls Server &amp; Workload Protection features</p>
    <p>If you disable the self-protection password before uninstalling, you do not need to include the password parameter.</p></td>
    </tr>
    <tr>
    <td><p>Uninstall all</p></td>
    <td><p>(No parameter)</p></td>
    <td><p><code>V1ESUninstallTool.exe</code></p></td>
    <td><p>Uninstalls the Trend Vision One Endpoint Security agent and all related components including Endpoint Sensor, Standard Endpoint Protection, Server &amp; Workload Protection, and Zero Trust Secure Access</p></td>
    </tr>
    </tbody>
    </table>

    :::note
    Endpoint Sensor is a core feature of the Trend Vision One Endpoint Security agent and cannot be uninstalled separately from the agent. If you do not want to use the Endpoint Sensor features, disable the Endpoint Sensor in Endpoint Security Policies. You can also disable the Endpoint Sensor using an override in Endpoint Inventory.
    :::

    The agent is uninstalled from the endpoint. Endpoint Inventory might take some time to update the information. Some endpoints might require you to manually update the endpoint lists. For more information, see [Cleaning Up Uninstalled Agents](./cleaning-up-uninstalled-agents).
