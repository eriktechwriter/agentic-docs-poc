---
slug: trend-vision-one-install-ds-agent-windows
title: Install the agent on Windows
---

Install the Trend Cloud One or Trend Micro Deep Security agent on Windows.

:::warning[Important]
To deploy the Trend Vision One Endpoint Security agent with Server & Workload Protection features, download and deploy the agent package from Endpoint Inventory. For more information, see [Deploy agents](deploy-agents.md).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to a version of Windows Server no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](connect-exist-prod-instance.md)
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](swp-agent-sys-requirements.md).

- For Windows deployments, [disable Windows Defender on Windows Server 2016 or later.](ds-defender-antivirus-win.md)

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](swp-port-numbers.md).

- Export the agent software from Server & Workload Protection. For more information, see [Get agent software](get-agent-software.md).

:::note
- During installation, network interfaces are suspended for a few seconds before being restored. If you are using DHCP, a new request is generated, potentially resulting in a new IP address for the restored connection.

- When installing on Windows 2012 Server Core, the notifier app is not included.

- Server & Workload Protection does not support switching the Windows 2012 server mode between Server Core and Full (GUI) modes after the agent is installed.

- If you are using Server Core mode in a Hyper-V environment, you will need to use Hyper-V Manager to remotely manage the Server Core computer from another computer. When the Server Core computer has the agent installed and Firewall enabled, the Firewall will block the remote management connection. To manage the Server Core computer remotely, turn off the Firewall module.

- Hyper-V provides a migration function used to move a guest VM from one Hyper-V server to another. The Server & Workload Protection Firewall module will block the connection between Hyper-V servers, so you will need to turn off the Firewall module to use the migration function.
:::

### Procedure {#procedure}

1.  Copy the downloaded agent ZIP package to the endpoint you want to protect and extract the files.

2.  To install the agent, run the MSI installer

    For Windows Server 2012 R2 Server Core, use the following command to run the installer:

    `msiexec /i Agent-Core-Windows-12.x-xxxx.x86_64.msi`

3.  In the installer, click **Next**.

4.  If you agree to the **End-User License Agreement**, select **I accept the terms of the license agreement** and click **Next**.

5.  Select the **Destination Folder** where you want to install the agent and click **Next**.

6.  If you are ready to install, click **Install** to start the installation.

7.  Once installation finishes, click **Finish** to close the installer.

    After you install the agent, review the following steps to finish setting up your environment:

    - [Activate the agent](activate-agent.md)

    - [Assign a policy to a computer](create-policies.md)

    Older Amazon WorkSpaces might encounter issues during installation. The issue has been fixed for newly-deployed WorkSpaces, but for older Amazon WorkSpaces, if installation fails with error code `2503`, take the following steps:

    1.  Edit `C:\Windows\Temp` to allow write permission for the endpoint user.

    2.  Use Command Prompt as an administrator to run the MSI file.
