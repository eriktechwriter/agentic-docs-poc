---
slug: trend-vision-one-install-ds-agent-macos
title: Install the agent on macOS
---

Install the Trend Cloud One or Trend Micro Deep Security agent on supported macOS endpoints.

:::warning[Important]
Server & Workload Protection does not support deployment to macOS endpoints. To deploy the Trend Vision One Endpoint Security agent with endpoint protection features, download the Standard Endpoint Protection configuration package from Endpoint Inventory. For more information, see [Deploy agents](deploy-agents.md).

Agents deployed using software downloaded from Administration in Server & Workload Protection do not have full compatibility with Trend Vision One and lack support for certain security features including:

- Endpoint Security Policies

- Version Control Policies

- Endpoint Sensor XDR functions

- Data Security Sensor

- Cyber Risk Exposure Management

Additionally, Endpoint Inventory might flag these endpoints with errors or support issues. Trend Micro recommends only using this method for testing purposes or troubleshooting with your support provider.

If you are attempting to deploy an agent to a version of macOS no longer supported by Trend Vision One, Trend Micro recommends using a connected Trend Micro Deep Security Manager to manage the endpoint. Please be aware that unsupported operating systems might pose greater security risk. For more information about connecting your Deep Security Manager to Trend Vision One, see [Connect existing products to Product Instance](connect-exist-prod-instance.md)
:::

Before you begin, review the following:

- Review the system requirements. For more information, see [Agent requirements](swp-agent-sys-requirements.md).

- Verify your port settings to allow inbound and outbound communication. For more information, see [Server & Workload Protection Port numbers](swp-port-numbers.md).

- Export the agent software from Server & Workload Protection. For more information, see [Get agent software](get-agent-software.md).

:::note
Mobile Device Management (MDM) helps configure your system to install and run the agent. Before you install, see [Configure Mobile Device Management on Server & Workload Protection for the macOS agent](configure-mdm-macos-agent.md) for help setting up an automated or scripted installation. For specific details, including third party configuration instructions and MDM default configuration profiles, see <https://success.trendmicro.com/dcx/s/solution/000277823?language=en_US>.
:::

### Procedure {#procedure}

1.  Copy the downloaded agent package to the endpoint you want to protect.

    :::note
    Some agent packages are contained in a ZIP file. If your package is contained in a ZIP file, extract the file before continuing.
    :::

2.  Double-click the installation file (.pkg file) to run the installer package.

3.  On the welcome screen, click **Continue** to begin the installation.

4.  On the **License** screen, review the license terms and click **Continue** to agree to the software license agreement.

5.  When prompted, select **Agree** to continue.

6.  Click **Install**.

7.  Provide your macOS administrator password for the software installation and click **Install Software**.

8.  Click **OK** to allow the installer access to files in your folders.

9.  Once the installation completes, click **Close** to close the installation wizard.

    After you successfully install the agent, review the following steps to finish setting up your environment:

    - [Activate the agent](activate-agent.md)

    - [Assign a policy to a computer](create-policies.md)
